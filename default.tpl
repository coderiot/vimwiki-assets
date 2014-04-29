<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link type="text/css" rel="stylesheet" href="%root_path%assets/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="%root_path%assets/css/bootstrap-responsive.css" />
<link type="text/css" rel="stylesheet" href="%root_path%assets/css/docs.css" />
<link type="text/css" rel="stylesheet" href="%root_path%assets/css/monokai.css" />
<link type="text/css" rel="stylesheet" href="%root_path%assets/css/vimwiki.css" />
<link type="text/css" rel="stylesheet" href="%root_path%assets/css/font-awesome.css">

<script type="text/javascript" src="%root_path%assets/js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="%root_path%assets/js/bootstrap.js"></script>
<script type="text/javascript" src="%root_path%assets/js/highlight.pack.js"></script>

<title>%title%</title>

</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>

            <!-- Be sure to leave the brand out there if you want it shown -->
            <a class="brand" href="http://code.google.com/p/vimwiki/">Vimwiki</a>

            <!-- Everything you want hidden at 940px or less, place within here -->
            <div class="nav-collapse collapse">
                <!-- .nav, .navbar-search, .navbar-form, etc -->
                <ul class="nav">
                    <li class="">
                        <a href="%root_path%index.html">Index</a>
                    </li>
                    <li class="">
                        <a href="%root_path%workspace/index.html">Workspace</a>
                    </li>
                    <li class="">
                        <a href="%root_path%diary/diary.html">Diary</a>
                    </li>
                    <li class="">
                        <a href="#">Calendar</a>
                    </li>
                    <li class="">
                        <a href="%root_path%todo.html">To Do</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span3 bs-docs-sidebar">
            <ul id="sidebar_list" class="nav nav-list bs-docs-sidenav affix">
            </ul>
        </div>

        <div class="span7">
            <!--Body content-->
            %content%

        </div>
  </div>
</div>
<a href="#" class="backtotop"><i class="fa fa-arrow-circle-up fa-4x"></i></a>
<!-- Footer
    ================================================== -->
<footer class="footer">
  <div class="container">
    <p><a href="http://twitter.github.com/bootstrap/">Twitter Bootstrap</a> licensed under <a href="http://www.apache.org/licenses/LICENSE-2.0">Apache License v2.0</a>.</p>
    <p><a href="http://fortawesome.github.com/Font-Awesome">Font Awesome</a> licensed under <a href="http://scripts.sil.org/OFL">SIL Open Font License</a>.</p>
    <p><a href="http://softwaremaniacs.org/soft/highlight/en/">highlight.js</a> licensed under <a href="http://opensource.org/licenses/BSD-3-Clause">Modified BSD License</a>.</p>
    <ul class="footer-links">
    </ul>
  </div>
</footer>
<script>
    $('h1').each(function() {
        $(this).wrap('<section id="' + this.id + '"/>');
    });

    $('h1').wrap('<div class="page-header" />');
    $('h1').wrap('<div class="well well-small" />');

    $(document).ready(function() {
        var items = [];
        $('h1').each(function() {
            items.push('<li><a href="#' + this.id + '"><i class="fa fa-chevron-right pull-right"></i> ' + $(this).text() + '</a></li>');
        });  // close each()

    $('#sidebar_list').append( items.join('') );

    $('table').each(function() {
        $(this).addClass('table table-striped table-condensed table-hover');
    });

    $('.done0').each(function() {
        $(this).html('<div class="alert alert-info"><i class="fa fa-check-square-o"></i>'+$(this).html()+'</div></li>');
    });

    $('.done4').each(function() {
        $(this).html('<div class="alert alert-success"><i class="fa fa-square-o"></i>'+$(this).html()+'</div></li>');
    });

    // Fade Out Back-To-Top-Link on new page
    $('.backtotop').fadeOut();

    $(document).ready(function(){
        $(window).scroll(function(){
            if ($(this).scrollTop() > 100) {
                $('.backtotop').fadeIn();
            } else {
                $('.backtotop').fadeOut();
            }
        });
        $('.backtotop').click(function(){
            $("html, body").animate({ scrollTop: 0 }, 600);
            return false;
        });
    });

    $('pre').each(function() {
        $(this).html('<code>'+$(this).html()+'</code>');
    });
    hljs.initHighlightingOnLoad();
});
</script>
</body>
</html>
