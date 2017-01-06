<%-- 
    Document   : sse
    Created on : 5 Jan, 2017, 1:06:58 PM
    Author     : mtech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("results").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("GET", "http://localhost:8080/WebApplication5/sse", true);
  xhttp.send();
  setTimeout(loadDoc,1000);
}

</script>  



    </head>
    <body>
        <button type="button" onclick="loadDoc()">Start</button>

        <p id="results"></p>


    </body>
</html>
