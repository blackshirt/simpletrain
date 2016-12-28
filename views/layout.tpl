<!doctype html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/static/css/w3.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<nav class="w3-sidenav w3-card-16 w3-animate-left" style="display:none" id="sideNav">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-closenav w3-large">&times;</a>
  <a href="#"><i class="fa fa-home w3-xlarge"> Home </i></a>
  <a href="#"><i class="fa fa-envelope w3-xlarge"> Training </i></a>
  <a href="#"><i class="fa fa-home w3-xlarge"> Home </i></a>
  <a href="#"><i class="fa fa-envelope 3-xxlarge"> Training </i></a>
  <a href="#"><i class="fa fa-home w3-xlarge"> Home </i></a>
  <a href="#"><i class="fa fa-envelope w3-xlarge"> Training </i></a>
</nav>

<div id="main">

<header class="w3-container w3-indigo">
  <span class="w3-opennav w3-xlarge" onclick="w3_open()" id="openNav">&#9776;</span>
  <h1 class="w3-jumbo">Header</h1>
</header>


<div class="w3-container">
  <h2>London</h2>
  <p>London is the most populous city in the United Kingdom,
  with a metropolitan area of over 9 million inhabitants.</p>
</div>



<footer class="w3-container w3-indigo">
footer
</footer>
</div>

<script type="text/javascript">
function w3_open() {
  document.getElementById("main").style.marginLeft = "20%";
  document.getElementById("sideNav").style.width = "20%";
  document.getElementById("sideNav").style.display = "block";
  document.getElementById("openNav").style.display = 'none';
}
function w3_close() {
  document.getElementById("main").style.marginLeft = "0%";
  document.getElementById("sideNav").style.display = "none";
  document.getElementById("openNav").style.display = "inline-block";
}
</script>


</body>
</html>