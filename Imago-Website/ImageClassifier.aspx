<%@ Page Title="" Language="C#" MasterPageFile="~/Imago.Master" AutoEventWireup="true" CodeBehind="ImageClassifier.aspx.cs" Inherits="Imago_Website.ImageClassifier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/Classifier.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="home d-flex">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">

<%--                     <h1>Meme <i>Generator</i></h1>--%>
                    <div class="container">
                            <img src="" alt="Add an image" id="display_image" />
<%--                    <div id="displayImage">
                        <p id="para">Add an image</p>

                    </div>--%>
                            
                        </div>
    
 
                </div>
                <div class="col-lg-6 justify-content-center">
                    <div class=" container">

                        <div class="sidebar">
                                <p>Add Image</p>
                                <input type="file" id="file" class="form-control" accept="image/*" onchange="detectImage()" >
<%--                   here we left off             <button></button>--%>
                            <asp:Button Text="Run Image Classifier" runat="server" CssClass="btn btn-1" OnClick="ClassifyButton_Click" ID="ClassifyButton" />

                            <div id="table" >
<%--                                <table>
                                    <tr>
                                        <th>Label</th>
                                        <th>Probability</th>
                                    </tr>
                                    <tr>
                                        <td id="r1c1"></td>
                                        <td id="r1c2"></td>
                                    </tr>
                                    <tr>
                                        <td id="r2c1"></td>
                                        <td id="r2c2"></td>
                                    </tr>
                                    <tr>
                                        <td id="r3c1"></td>
                                        <td id="r3c2"></td>
                                    </tr>
                                </table>--%>

                            </div>
                                
                            </div>

                    </div>

                </div>


            </div>

        </div>

    </section>


    <script src="Scripts/ml5.min.js"></script>
    <script src="Scripts/Classifier.js"></script>

</asp:Content>
