<%@ Page Title="" Language="C#" MasterPageFile="~/Imago.Master" AutoEventWireup="true" CodeBehind="MemeGenerator.aspx.cs" Inherits="Imago_Website.MemeGenerator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/MemeGenerator.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="home d-flex">
        <div class ="container">
            <div class="row m-lg-0">
                <div class="col-lg-6">

<%--                     <h1>Meme <i>Generator</i></h1>--%>
<%--                        <div class="container">--%>
                            <canvas id="canvas"></canvas>
                            
<%--                        </div>--%>
    
 
                </div>
                <div class="col-lg-6">
                    <div class=" container">

                        <div class="sidebar">
                                <p>Add Image</p>
                                <input type="file" id="file" class="form-control">
                                <div class="group">
                                    <textarea placeholder="Type something" id="text" class="form-control"></textarea>
                                    <input type="color" id="color">
                                    <button id="addText" type="button" class="btn btn-1">Add Text</button>
                                </div>
                                <button id="save" type="button" class="btn btn-1">Save</button>
                            </div>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <script src="Scripts/fabric.js"></script>
    <script src="Scripts/MemeGenerator.js"></script>
<%--    <script type="module" src="appthatimports.js"></script>--%>


</asp:Content>
