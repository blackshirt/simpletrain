% rebase('layout.tpl', title='Page Title')

<div class="w3-container">
    <div class="w3-display-container">
        <img class="mySlides w3-image w3-animate-fading" src="/static/images/DSCN1601.jpg">
        <img class="mySlides w3-image w3-animate-fading" src="/static/images/DSCN1605.jpg">
        <img class="mySlides w3-image w3-animate-fading" src="/static/images/DSCN1609.jpg">
        <img class="mySlides w3-image w3-animate-fading" src="/static/images/DSCN1627.jpg">
    </div>
</div>


<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 5000);
}
</script>

