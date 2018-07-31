function loadLoaiTaiLieu(){
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open("GET","assets/jsp/index.jsp",false);
    xmlHttp.send();
    var arrTxt= xmlHttp.responseText.trim().split(",");
    var result = "";
    for(var i = 0; i < arrTxt.length-1; i++){
          result += "<option>" + arrTxt[i] + "</option>";  
    }
    document.getElementById("datatypes").innerHTML = result;
}

function kiemTra(){
    
//    checkCookie();

    if(!sessionStorage.hoten){
        alert("Bạn chưa đăng nhập!");
        // tải trang đăng nhập
        var xmlHttp = new XMLHttpRequest();
        xmlHttp.open("GET","dangnhap.html",false);
        xmlHttp.send();
        var trangdangnhap = xmlHttp.responseText;
        document.write(trangdangnhap);
    }
    else{
        //alert("Welcome again " + sessionStorage.username + " !");
        document.getElementById("current_username").innerHTML = sessionStorage.getItem("hoten");
    }
    loadLoaiTaiLieu();
}
function thoat(){
    sessionStorage.clear();
    var xhttp = new XMLHttpRequest();
    xhttp.open("GET","dangnhap.html",false);
    xhttp.send();
    document.write(xhttp.responseText);
}
function dangNhap(){
    var username = document.getElementById("username").value.trim();
    var password = document.getElementById("password").value.trim();
    if(username !="" && password != ""){
        var xmlHttp = new XMLHttpRequest();
        xmlHttp.open("GET","assets/jsp/dangnhap.jsp?username="+username+"&password="+password,false);       
        xmlHttp.send();
        var response = xmlHttp.responseText.trim();
        if(response == "false"){
            alert("Tên đăng nhập hoặc mật khẩu không đúng!");
            xmlHttp.open("GET","dangnhap.html",false);
            xmlHttp.send();
            document.write(xmlHttp.responseText);
        }
        else{
//            setCookie("hoten",response,1);
            sessionStorage.setItem("hoten", response);
            xmlHttp.open("GET","trangchu.html",false);
            xmlHttp.send();
            var text = xmlHttp.responseText;
            document.write(text);
//            document.getElementById("iframe").innerHTML = xmlHttp.responseText;
//           document.getElementById("iframe").document.write(xmlHttp.responseText);
        }
       
    }

}
function timkiem(){
    var kq = "";
    var file = document.getElementById("datatypes").value;
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open("GET","assets/jsp/timkiem.jsp?timkiem=" + file,false);
    xmlHttp.send();
    var nhan = xmlHttp.responseText.trim();
    if (nhan === "empty")
                {
                    alert("rong");
                }
                bd = JSON.parse(nhan);
               
                kq = "";
                for (var i = 0; i < bd.length; i++) {
                    
                    kq +=   "<div class='col-sm-3'><h2>" + bd[i].tentailieu + "</h2></div>"
                            + "<div class='col-sm-3'>Thể loại:"
                            + file+"</div>"
                           + "<div class='col-sm-3'><a>"+bd[i].gia + " VNĐ</div>"
                            + "<div class='col-sm-3'><button class='btn-info' onclick='kTraGia(\""+bd[i].gia+"\",\""+bd[i].tentailieu+"\")'>Download</button></div><br>"
                            + "</a>";

                }
               // kq += "";
                var myframe = document.getElementById("iframe").contentWindow.document;
                myframe.open();
                myframe.write(kq);
                myframe.close();
}

function kTraGia(giaTL,tenTL){
                if (confirm("Bạn có chắc chắn muốn mua không?")){
                    var ng = sessionStorage.getItem("hoten");
                    console.log(giaTL);
                    console.log(ng);
                    console.log(tenTL);
                    var xmlhttp = new XMLHttpRequest();
                    xmlhttp.open("get", "assets/jsp/giaUser.jsp?ng="+ng, false);
                    xmlhttp.send();

                    var nhan = xmlhttp.responseText.trim();
                    console.log(nhan);
                    tienConLai = nhan - giaTL;
                    console.log(tienConLai);
                    if (tienConLai < 0 ){
                        alert("Bạn không đủ tiền download tài liệu này");

                    }
                    else{
                        var xmlhttp = new XMLHttpRequest();
                        xmlhttp.open("get", "assets/jsp/thanhtoan.jsp?tenTL="+tenTL+"&tienConLai="+tienConLai+"&giaTL="+giaTL+"&ngMua="+ng, false);
                        xmlhttp.send();
                        alert("Đã thanh toán thành công");
                        var bd="";
//                      Dowload
                        var xmlhttp = new XMLHttpRequest();
                        xmlhttp.open("get", "assets/jsp/layTL.jsp?tenTL="+tenTL, false);
                        xmlhttp.send();
                        var nhan = xmlhttp.responseText.trim();
         
                        if (nhan === "empty")
                        {
                            alert("rong");
                        }
                        bd = JSON.parse(nhan);

                        kq = "<style> .item{list-style-type: none; border-bottom: 1px solid white;}"
                            + ".item h2{display: inline-block; width: 50%; margin: 0px;font-size: 18px;color: black;}"
                            + ".item p{display: inline-block;width: 10%;font-size: 16px;font-style: oblique; margin: 0px;}"
                            + ".type{display: inline-block; width: 25%;}"
                            + ".filename{display: inline;font-family: serif;font-size: 16px;position: relative;text-decoration: none;font-style: oblique;}"
                            + ".filename:hover{color: #17B22B;}"
                            + "</style>";

                        kq += '<ul>';
                        for (var i = 0; i < bd.length; i++) {
                                kq +=   "<li class='item'><h2>" + bd[i].tentailieu + "</h2>"
                                            + "<p>Thể loại: </p>"
                                            + "<a class='type'>"+ bd[i].tenloaitailieu
                                            + "<a class='filename' href='assets/jsp/download.jsp?filename=" + bd[i].tenfile + "'>Download</a><br>"
                                            + "</a></li>";

                        }
                        kq += "</ul>";
//                        var myframe = document.getElementById("iframe").contentWindow.document;
//                        myframe.open();
//                        myframe.write(kq);
//                        myframe.close();
//                        alert("OK");
                    document.getElementById("nd").innerHTML = kq;

                    
                    }
                
                }
            }




function dangKy(){
    var username = document.getElementById("username").value.trim();
    var password = document.getElementById("password").value.trim();
    var password_confirm = document.getElementById("conf_password").value.trim();
    var hoten  = document.getElementById("hoten").value.trim();
    var email = document.getElementById("email").value.trim();

    if(username !=""){
        if(password != "" && (password == password_confirm)){
            if(hoten != ""){             
               var xmlHttp = new XMLHttpRequest();
//               var userInfo = '{ "username":username, "password":password,"email":email, "hoten":hoten }';
//               xmlHttp.open("GET","assets/jsp/dangky.jsp?userInfo=" + userInfo,true);
                var userInfo = "username="+username 
                           +"&password=" + password 
                           +"&email=" + email
                           +"&hoten=" + hoten;
                xmlHttp.open("GET","assets/jsp/dangky.jsp?"+userInfo ,false);
//                xmlHttp.setRequestHeader("User_Signup","/userInfo");
                xmlHttp.send();
                var result = xmlHttp.responseText;
                console.log(result);
                if(result > 0 ){
                    alert("Đăng ký thành công");
                    xmlHttp.open("GET","dangnhap.html",false);
                    xmlHttp.send();
                    document.write(xmlHttp.responseText);
                }
                else {
                    alert("Tạo tài khoản KHÔNG THÀNH CÔNG!. Username đã tồn tại!");
                }
                
            }else{
                alert("Họ và tên không được để trống!");
            }
        }
        else{
            alert("Lỗi đặt password!");
        }
    }
    else{
        alert("'Username' không được để trống!");
    }
}
//function Deletetl(){
////    var yes = confirm("Xác nhận xóa tài liệu!");
////    if(yes){
////        alert("OK");
////    } else {
////        alert("A");
////    }
//    alert("aaaa");
//    
//}