<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="assets/css/styles.css">
    <script src="assets/javascript/myscripts.js"></script>
    <title>Upload page</title>
    <script>
        function Upload(){

            var file = document.getElementById("file").value;
            var arr = file.toString().split("\\");
            var filename1 = arr[arr.length-1];
            var filename = filename1.trim();
            

            var tentl = document.getElementById("tentl").value;
            var loaitl = document.getElementById("datatypes").value;
            var ngdang = sessionStorage.getItem("hoten");
            var gia = document.getElementById("gia").value;
            var xmlHttp = new XMLHttpRequest();
            console.log(filename);
            console.log(tentl);
            console.log(loaitl);
            console.log(ngdang);
            console.log(gia);
            
            

            xmlHttp.open("GET","assets/jsp/addTL.jsp?filename= " + filename + "&tentl=" + tentl + "&loaitl="  + loaitl + "&ngdang=" + ngdang + "&gia=" + gia ,false);
            xmlHttp.send();
            var kq = xmlHttp.responseText.trim();
//            alert(kq);
            console.log(kq);
        }

        </script>
</head>
<body onload="loadLoaiTaiLieu()" style="width: 700px; height: 800px;">
	<form action="UploadServlet" method="post" enctype="multipart/form-data" name="form1" id="upload_form">

                
                <div>
                <p class="p_in_form">Link:</p>
                <input name="file" type="file" id="file" multiple required style="background-color: white;">
            </div>
            <div>
                <p class="p_in_form">Name: </p>
                <input type="text" id="tentl" required> <br>
            </div>
            <div style="margin-bottom: 0px;">
                <p class="p_in_form">Loai Tai Lieu: </p>
                <select id="datatypes" style="width: 75%; height: 22px; float: right; margin-top: 12px;" required >    
                </select>
            </div>
            <div>
                <p class="p_in_form">Giá (VNĐ): </p>
                <input type="text" id="gia" required placeholder="5000"> <br>
            </div>

        <input type="submit" value="Upload" onclick="Upload()">

	</form>
</body>
</html>


