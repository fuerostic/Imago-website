<%@ Page Title="" Language="C#" MasterPageFile="~/Imago.Master" AutoEventWireup="true" CodeBehind="QrCodeGenerator.aspx.cs" Inherits="Imago_Website.QrCodeGenerator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/QrGenerator.css" rel="stylesheet" />
    <title>Qr Code Generator</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="home d-flex">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 d-flex justify-content-center">
                    <div class="qrbox">
                        <div id="qrcode"></div>
                        <img src="Assets/Images/qr-code-linear-icon-modern-outline-logo-concept-whit-white-background-e-commerce-payment-collection-suitable-use-133518035.jpg" alt="qr code" id="imageqr"/>
                        <textarea  id="qrData" placeholder="Enter your text"></textarea>
                        <button type="button" id="qrGenerateButton" class="btn btn-1" onclick="generatorQR()" >Generate Qr Code</button>
                        
<%--                        <asp:Button Text="Generate Qr Code" runat="server" CssClass="btn btn-1" OnClick="generatorQR()" />--%>
                    </div>
                    

                </div>

            </div>

        </div>

    </section>
    <script src="Scripts/qrcode.min.js"></script>
    <script src="Scripts/QrGenerator.js"></script>
</asp:Content>
