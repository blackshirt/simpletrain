<!doctype html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/static/css/bootstrap.min.css" rel="stylesheet">
	<link href="/static/css/custom.css" rel="stylesheet">
</head>
<body>

<nav class="animate">
    <p>Action of <strong> Diklat </strong> </p>
    <ul>
        <li>
            <a href="/surat"><span class="glyphicon glyphicon-list pull-left"></span>List of Surat</a>
        </li>
        <li>
            <a href="/tubel"><span class="glyphicon glyphicon-folder-open pull-left"></span>Tugas belajar</a>
        </li>
        <li>
            <a href="/teknisfungsional"><span class="glyphicon glyphicon-user pull-left"></span>Teknis Fungsional</a>
        </li>
        <li>
            <a href="/">Projects</a>
        </li>
        <li>
            <a href="">Résumé</a>
        </li>
    </ul>
    <div class="divider"></div>
    <h4>Thanks To</h4>
    <ul>
        <li>
            <a href="/">@Home</a>
            <a href="/about">@About</a>
        </li>
    </ul>
</nav>

<div class="nav-controller">
    <span class="[ glyphicon glyphicon-chevron-down ] controller-open"></span>
    <span class="[ glyphicon glyphicon-remove ] controller-close"></span>
</div>



<!-- content -->
{{!base}}

<script src="/static/js/jquery-3.1.0.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(function() {
    $('nav, .nav-controller').on('click', function(event) {
        $('nav').toggleClass('focus');
    });
    $('nav, .nav-controller').on('mouseover', function(event) {
        $('nav').addClass('focus');
    }).on('mouseout', function(event) {
        $('nav').removeClass('focus');
    })
})
</script>
</body>
</html>