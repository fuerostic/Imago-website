<%@ Page Title="" Language="C#" MasterPageFile="~/Imago.Master" AutoEventWireup="true" CodeBehind="ImageResizer.aspx.cs" Inherits="Imago_Website.ImageResizer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/ImageResizer.css" rel="stylesheet" />
    <title>Image Resizer</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <section class="home d-flex">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">

                    <div class="main">

                        <div class="Tools">
                            <ul id="selectionList">
                                <li class="selection">
                                    <img class="icon" src="Assets/Icons/bx-crop.svg" alt="Resize" />
                                    <p>Resize</p>
                                </li>
                               
                                <li onclick="Download_btn()">
                                    <img class="icon" src="Assets/Icons/bx-export.svg" alt="Export" />
                                    <p>Export</p>
                                </li>
                            </ul>
                        </div>

                        <div class="content">
                            <p id="logo">Photo Resizer</p>

                            <div class="choose_image">
                                <div class="upload_img_box">
                                    <img class="icon" src="Assets/Icons/bxs-image-add.svg" alt="Upload image" /><br>
                                    <input type="file" name="selectedImage" id="selectedImage" accept="image/jpeg, image/png">
                                    <p id="hint">choose Image from folder</p>
                                </div>
                            </div>

                            <canvas id="image_canvas"></canvas>

                            <div class="image_holder">
                                <button id="remove_img_btn">
                                    <img class="icon" src="Assets/Icons/bxs-message-square-x.svg" alt="Remove image" /></button>
                                <img src="" alt="img" id="image">
                            </div>

                            <div class="options">

                                <div class="option">
                                    <input type="number" name="Width" id="imgWidth" class="resizer" placeholder="Enter Width" /><p>X</p>
                                    <input type="number" name="Height" id="imgHeight" class="resizer" placeholder="Enter Height"  /> 
                                    
                                </div>

                                
                            </div>

                            <button id="clearAll" onclick="clearAllRangeValue()" type="button"><span>Reset</span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <script src="Scripts/ImageResizer.js"></script>

</asp:Content>
