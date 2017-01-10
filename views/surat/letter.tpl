% rebase('layout.tpl', title='Page Title')

<div class="w3-container w3-margin">
    <div class="w3-col l3 m3 s2">2</div>
    <div class="w3-rest w3-white">1</div>
    <a class="w3-btn-floating-large w3-red w3-right" onclick="document.getElementById('id01').style.display='block'"style="position:relative;top:28px;right:16px;">+</a>
</div>



<div id="id01" class="w3-modal w3-card-5 w3-animate-zoom">
    <div class="w3-modal-content">
      <header class="w3-container">
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-closebtn">&times;</span>
        <h2>Header</h2>
      </header>

        <form class="w3-form w3-margin" action="#">
            <div class="w3-container w3-padding-32 w3-card-4">
                <p><input class="w3-input" type="text" placeholder="Name"></p>
                <p><input class="w3-input" type="text" placeholder="Email"></p>
                <p><textarea class="w3-input" placeholder="Subject"></textarea></p>

                <button class="w3-btn w3-round">Register</button>
            </div>
        </form>

      <footer class="w3-container">

      </footer>
    </div>
  </div>
</div>

    
   
    
