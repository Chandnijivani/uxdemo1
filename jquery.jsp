<%-- 
    Document   : jquery
    Created on : 5 Jan, 2017, 2:16:31 PM
    Author     : mtech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#b1").click(function(){
        $("p.a").hide();
    });
});
</script>
<script>
$(document).ready(function(){
    $("#b2").dblclick(function(){
        $(this).hide();
    });
});
</script>
<script>
$(document).ready(function(){
    $("#b3").click(function(){
        $("#div1").fadeToggle();
        $("#div2").fadeToggle();
        $("#div3").fadeToggle();
        
                
    });
});
</script>
<script> 
$(document).ready(function(){
    $("#b4").click(function(){
        var div = $("#div4");
        div.animate({height: '300px', opacity: '0.4'}, "slow");
        div.animate({width: '300px', opacity: '0.8'}, "slow");
        div.animate({height: '100px', opacity: '0.4'}, "slow");
        div.animate({width: '100px', opacity: '0.8'}, "slow");
     
    });
});
</script> 
    </head>
    <body>
  <h2>This is a jquery</h2>

<p>Jquery is very wonderful!!!!!</p>

<p class="a">this is another example of jquery</p>
<p>hello welcome to jquery</p>


<button id="b1">Click for hide text</button>
<button id="b2">double Click for hide text</button>

<button id="b3">Click to fade the box</button>
<button id="b4">Click to animate the box</button>


<div id="div1" style="width:80px;height:80px;display:none;background-color:red;"></div><br>
<div id="div2" style="width:80px;height:80px;display:none;background-color:green;"></div><br>
<div id="div3" style="width:80px;height:80px;display:none;background-color:blue;"></div>


<div id="div4" style="background:#0f0f0f;height:100px;width:100px;">
       
    </body>
</html>
