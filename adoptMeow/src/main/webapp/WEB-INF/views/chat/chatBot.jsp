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

		
		document.getElementById('response').innerHTML='';

	}

	function connect() {
		var socket = new SockJS('${pageContext.request.contextPath}/chatBotRoom')
		stompClient = Stomp.over(socket);

		stompClient.connect({}, function(frame) {

			setConnected(true)
			alert('연결 성공! ' + frame)
			stompClient.subscribe('/freeChat/messages2',
					function(messageOutput) {

						showMessageOutput(JSON.parse(messageOutput.body));

					})
		})

	}

	function sendMessage() {

		var from = "guest1";
		var text = document.getElementById('text').value;

		stompClient.send("/chatApp/chatBotRoom", {}, JSON.stringify({

			'from' : from,
			'text' : text

		}))
	}

	function showMessageOutput(messageOutput) {

		var response = document.getElementById('response');
		var p = document.createElement('p');
		p.style.wordWrap = 'break-word';
		p.appendChild(document.createTextNode(messageOutput.text + " : "));
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
<body onload="connect()">
	<!-- onload="disconnect()" -->
	<div>

		<div id="conversationDiv">
			<p>chatBot:  1) 바로가기 링크 2) 후원하기</p>
			<input type="message" id="text" placeholder="번호를 입력하세요">
			<button id="sendBtn" onclick="sendMessage();">번호 보내기</button>

			<p id=response>
				<p>챗봇과의 대화가 입력되는 곳입니다.</p>
			</p>

		</div>







	</div>







</body>
</html>