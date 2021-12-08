<%@ Page Title="" Language="C#" MasterPageFile="~/Imago.Master" AutoEventWireup="true" CodeBehind="DrawingPage.aspx.cs" Inherits="Imago_Website.DrawingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/DrawingToolsStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="home ">

        <div class=" container">

      
        <div class="row">
            <div class="col-lg-12">

                
        <div class="app">
            <div class="controls">
                <div class="title"> Sketch</div>
                <div class="type">

                    <label>Mode:<select id="mode"></select></label>
                </div>

                <div class="size">
                    <label for="pen-size">Size</label>
                    <input type="range" id="pen-size" min="1" max="50" value="3"/>

                </div>

                <div class="color">
                    <label for="pen-color">Color</label>
                    <input type="color" id="pen-color"  />

                </div>

                <div class="actions">
                    <button id="reset-canvas">Reset</button>
                    <button id="save-canvas" onclick="save()">Save</button>

                </div>

            </div>



            <canvas id="c" width="1000px" height="500px">

              It looks like you don't support canvas, Sorry!
            </canvas>

        </div>

            </div>

        </div>

              </div>
                

    </section>

    <script src="Scripts/DrawingTool.js"></script>
    <script src="Scripts/p5.min.js"></script>
    <link href="Content/DrawingToolsStyle.css" rel="stylesheet" />
</asp:Content>
