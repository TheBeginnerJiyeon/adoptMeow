 <style>
        .maincontent{
  padding-top: 0%;
  padding-left:0%;
}

.col {
  padding: 1%;
}
.col-lg{
    height: 200px;
    overflow: hidden;
    margin: 10px 0;
    position: relative;
    flex-basis: 30%;
}

  /* Images crop and center to col-lg box up to 1000% centering (if 100% if it's 3x the size it doesn't fully center)Idk man why? projectors and stuff? */
.col-lg img{
  display:block;
    position: absolute;
    left: -1000%;
    right: -1000%;
    top: -1000%;
    bottom: -1000%;
    margin: auto;
    min-height: 100%;
    min-width: 100%;
}
.imgrid {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}


    </style>

<script>

const url = "https://api.thecatapi.com/v1/images/search?limit=50";
const api_key = "DEMO_API_KEY"

 fetch(url,{headers: {
      'x-api-key': api_key
    }})
 .then((response) => {
   return response.json();
 })
.then((data) => {
	console.log(data[0].url);
	
	for(let i=0;i<data.length;i++){
		console.log(data.length)
		let image = document.createElement('img');
	    //use the url from the image object
	    console.log(data[i].url);
	    image.src = data[i].url;
	        
	    let gridCell = document.createElement('div');
	    gridCell.classList.add('col');
	    gridCell.classList.add('col-lg');
	    gridCell.appendChild(image)
	      
	    document.getElementById('grid').appendChild(gridCell);
		
		
	}
	
	
/*   let imagesData = data;
  imagesData.map(function(imageData) {
    
    let image = document.createElement('img');
    //use the url from the image object
    console.log("${imageData.url}");
    image.src = "${imageData.url}";
        
    let gridCell = document.createElement('div');
    gridCell.classList.add('col');
    gridCell.classList.add('col-lg');
    gridCell.appendChild(image)
      
    document.getElementById('grid').appendChild(gridCell);
    
    }); */
})
.catch(function(error) {
   console.log(error);
});


    </script>


<div class="maincontent">
	<div id="grid" class="imgrid"></div>
</div>
