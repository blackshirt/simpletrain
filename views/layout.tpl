<!doctype html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/static/css/w3.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="w3-sand">

<nav class="w3-sidenav w3-card-16 w3-animate-left w3-black" style="display:none" id="sideNav">
      <a href="javascript:void(0)" onclick="w3_close()" class="w3-closenav w3-large"><i class="fa fa-close"></i></a>
      <a href="#" class="w3-hover-indigo">Home</a>
      <a href="#" class="w3-hover-indigo">Training</a>
      <a href="#" class="w3-hover-indigo">Study</a>
      <a href="#" class="w3-hover-indigo">Learning</a>
      <a href="#" class="w3-hover-indigo">Statistik</a>
      <a href="#" class="w3-hover-indigo">Gallery</a>
</nav>

<div id="main">

    <header class="w3-container w3-black">
      <span class="w3-topnav w3-xlarge" onclick="w3_open()" id="openNav"><i class="fa fa-bars"></i></span>
      <h1 class="w3-xxlarge">Header</h1>
    </header>

    <!-- content -->
    {{!base}}

    <!-- Footer -->
    <footer class="w3-container w3-padding-16 w3-center w3-black w3-xlarge w3-bottom">
      <a href="#"><i class="fa fa-facebook-official"></i></a>
      <a href="#"><i class="fa fa-pinterest-p"></i></a>
      <a href="#"><i class="fa fa-twitter"></i></a>
      <a href="#"><i class="fa fa-flickr"></i></a>
      <a href="#"><i class="fa fa-linkedin"></i></a>
      <p class="w3-medium">Powered by w3.css</p>
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