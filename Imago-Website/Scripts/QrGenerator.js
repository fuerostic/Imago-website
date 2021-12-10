var qrdata = document.getElementById("qrData");
var qrcode = new QRCode(document.getElementById("qrcode"));

function generatorQR() {

    document.getElementById("imageqr").style.display = "none";
    document.getElementById("qrcode").style.display = "block";
    var data = qrdata.value;

    qrcode.makeCode(data);
/*    alert(data);*/

}