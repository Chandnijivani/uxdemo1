<%-- 
    Document   : student
    Created on : 5 Jan, 2017, 11:04:05 AM
    Author     : mtech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        table,th,td {
        border : 1px solid black;
        border-collapse: collapse;
        }
        th,td {
        padding: 5px;
        }
    </style>
    </head>
    <body>
       <h1>The XML Http Request Object</h1>

        <button type="button" onclick="loadDoc()">Get my student records</button>
        <br><br>
        <table id="demo"></table>
<script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      myFunction(this);
    }
  };
  xhttp.open("GET", "student.xml", true);
  xhttp.send();
}

function myFunction(xml) {
    var i;
    var xmlDoc = xml.responseXML;
    var table="<tr><th>Name</th><th>College</th><th>Branch</th><th>Eno</th></tr>";
    var x = xmlDoc.getElementsByTagName("student");
    for (i = 0; i <x.length; i++) { 
    table += "<tr><td>" +
    x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue +
    "</td><td>" +
    x[i].getElementsByTagName("college")[0].childNodes[0].nodeValue +
    "</td><td>" + x[i].getElementsByTagName("branch")[0].childNodes[0].nodeValue +
    "</td><td>" + x[i].getElementsByTagName("enroll")[0].childNodes[0].nodeValue + "</td></tr>";
  }
  document.getElementById("demo").innerHTML = table;
}
</script>
</body>
</html>
