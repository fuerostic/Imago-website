<%@ Page Title="" Language="C#" MasterPageFile="~/Imago.Master" AutoEventWireup="true" CodeBehind="ImageEditor.aspx.cs" Inherits="Imago_Website.ImageEditor
    " %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="Content/ImageEditor.css" rel="stylesheet" />
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
                                <img class="icon" src="Assets/Icons/bxs-brightness-half.svg" alt="brightness" />
      			                <p>BrightNess</p>
      		                </li>
      		                <li class="selection">
                                  <img class="icon" src="Assets/Icons/bxs-brush.svg" alt="brush" />
      			                <p>Blur</p>
      		                </li>
      		                <li class="selection">
                                  <img class="icon" src="Assets/Icons/bxs-collection.svg" alt="Grayscale" />
      			                <p>GreyScale</p>
      		                </li >
      		                <li class="selection">
                                  <img class="icon" src="Assets/Icons/bxs-color-fill.svg" alt="hue" />
      			                <p>Hue Rotate</p>
      		                </li>
      		                <li class="selection">
                                  <img class="icon" src="Assets/Icons/bxs-magic-wand.svg" alt="Saturation" />
      			                <p>Saturation</p>
      		                </li>
      		                <li onclick="Download_btn()" >
                                  <img class="icon" src="Assets/Icons/bx-export.svg" alt="Export" />
      			                <p>Export</p>
      		                </li>
      	                </ul>
                      </div>

                      <div class="content">
      	                <p id="logo">Photo Editor</p>

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
          	                <input type="range" max="200" min="0" value="100" id="brightness" class="slider">
          	                <p id="brightVal" class="show_value">100</p>
                          </div>

                           <div class="option">
          	                <input type="range" max="40" min="0" value="0" id="blur" class="slider">
          	                <p id="blurVal" class="show_value">0</p>
                          </div>

                           <div class="option">
          	                <input type="range" max="100" min="0" value="0" id="greyScale" class="slider">
          	                <p id="greyVal" class="show_value">0</p>
                          </div>

                           <div class="option">
          	                <input type="range" max="100" min="0" value="0" id="hue" class="slider">
          	                <p id="hueVal" class="show_value">0</p>
                          </div>

                           <div class="option">
          	                <input type="range" max="100" min="1" value="1" id="saturation" class="slider">
          	                <p id="saturationVal" class="show_value">1</p>
                          </div>

                        </div>

                        <button id="clearAll" onclick="clearAllRangeValue()" type="button"><span>Reset</span></button>

                      </div>

	                </div>

                </div>

            </div>

        </div>

    </section>
    <script src="Scripts/ImageEditor.js"></script>
</asp:Content>
