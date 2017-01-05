<%-- 
    Document   : newjsp1
    Created on : 5 Jan, 2017, 12:22:08 PM
    Author     : mtech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
    </head>
    <body>
     
<h3>Content written as an JSON array will be converted into a JavaScript array.</h3>

<p id="demo"></p>

<script>

var xmlhttp = new XMLHttpRequest();
xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        var myobj = JSON.parse(this.responseText);
        document.getElementById("demo").innerHTML ="Name is:"+myobj.name + "<br><br>" + "Age is:" +myobj.age + "<br><br>" +"City is:" + myobj.city + "<br><br>" + "car is" + myobj.cars[0];
    }
};
xmlhttp.open("GET", "jsondis.txt", true);
xmlhttp.send();

</script>
<br><br><br>
<p>file which is parsed is<a href="jsondis.txt" target="_blank">to see json file</a></p>
    </body>
</html>
