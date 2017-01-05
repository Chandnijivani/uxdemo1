<%-- 
    Document   : newjsp
    Created on : 4 Jan, 2017, 10:39:18 AM
    Author     : mtech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    </head>
    <body>
        <h1>The XMLHttpRequest Object</h1>
        
   <div id="demo">

    <button type="button" onclick="loadDoc()">Change Content</button>
    </div>
 <script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("GET", "http://localhost:8080/WebApplication5/abc?fname=hiral", true);
  xhttp.send();
  
}
</script>  



    </body>
</html>
