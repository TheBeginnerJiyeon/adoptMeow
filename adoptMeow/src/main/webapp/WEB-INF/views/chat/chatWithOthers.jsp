<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/sockjs-0.3.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/stomp.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/webSocketSendToUserApp.js"></script>

<script type="text/javascript">
	var stompClient = null;

	function setConnected(connected) {

		document.getElementById('connect').disabled = connected;
		document.getElementById('disconnect').disabled = !connected;
		document.getElementById('conversationDiv').style.visibility = connected ? 'visible'
				: 'hidden';
		document.getElementById('response').innerHTML='';

	}

	function connect() {
		var socket = new SockJS('${pageContext.request.contextPath}/chatRoom')
		stompClient = Stomp.over(socket);

		stompClient.connect({}, function(frame) {

			setConnected(true)
			alert('연결 성공! ' + frame)
			stompClient.subscribe('/freeChat/messages1',
					function(messageOutput) {

						showMessageOutput(JSON.parse(messageOutput.body));

					})
		})

	}

	function sendMessage() {

		var from = document.getElementById('from').value;
		var text = document.getElementById('text').value;

		stompClient.send("/chatApp/chatRoom", {}, JSON.stringify({

			'from' : from,
			'text' : text

		}))
	}

	function showMessageOutput(messageOutput) {

		var response = document.getElementById('response');
		var p = document.createElement('p');
		p.style.wordWrap = 'break-word';
		p.appendChild(document.createTextNode(messageOutput.from + " : "
				+ messageOutput.text + " (" + messageOutput.time + ")"));
		response.appendChild(p);

	}

	function disconnect() {

		if (stompClient != null) {
			stompClient.disconnect();
		}
		setConnected(false);
		console.log("Disconnected~")

	}
</script>



</head>
<body onload="disconnect()">
	<!-- onload="disconnect()" -->
	<div>

		<div>
			<span>익명 닉네임 입력 : </span> <input type="text" id="from">
		</div>

		<div>
			<button id="connect" onclick="connect();">Connect</button>
			<button id="disconnect" onclick="disconnect();" disabled="disabled">Disconnect</button>
		</div>

		<div id="conversationDiv">
			<input type="message" id="text" placeholder="메세지 입력하세요">
			<button id="sendBtn" onclick="sendMessage();">메세지 보내기</button>

			<p id=response>
				<p>대화가 입력되는 곳입니다.</p>
			</p>

		</div>







	</div>







</body>
</html>