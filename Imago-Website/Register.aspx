<%@ Page Title="" Language="C#" MasterPageFile="~/Imago.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Imago_Website.Register" EnableSessionState="True" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="home ">

        <div class="page-holder d-flex align-items-center">
            <div class="container">
                <div class="row align-items-center py-5">
                    <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">

                        <div class="pr-lg-5">
                            <img src="Assets/Images/visuals-2TS23o0-pUc-unsplash.jpg" alt="" class="img-fluid"/>

                        </div>

                    </div>

                    <div class="col-lg-5 px-lg-4">
<%-- need to change the color od the login heading --%>
                        <h1 class="text-base text-primary text-uppercase mb-4" runat="server" id="RegisterHeading">Register Here</h1> 
                        <h2 class="mb-4" runat="server" id="WelcomeText">Welcome!</h2>

                        <div class="form-group mb-4">
                            <asp:TextBox CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Your Email" TextMode="Email" runat="server" ID="registerMail" />

                        </div>

                        <div class="form-group mb-4">
                            <asp:TextBox CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Your Passoword" TextMode="Password" runat="server" ID="registerPass" />

                        </div>

                        <div class="form-group mb-4">
                            <div class="custom-control custom-checkbox">
                                <asp:CheckBox Text="&nbsp&nbsp&nbspRemember Me" runat="server" ID="rememberRegister" />

                            </div>

                        </div>

                        <asp:Button Text="REGISTER" CssClass="btn btn-1" runat="server" ID="RegisterButton" OnClick="Unnamed4_Click" />


                        <h3 class="h6 text-uppercase mb-0 mt-5" runat="server" id="loginPrompt" >Already have an account?  <a href="Login.aspx">Login here</a> </h3>


                        <h1 class="text-base text-primary text-uppercase mb-4" runat="server" id="VerifyHeading" visible="false">Verify your mail</h1> 

                        <asp:Label ID="RegSentCode" runat="server" Text="Verification code sent" Visible="false"></asp:Label>


                        <div class="form-group mb-4">
                            <asp:TextBox CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Verification Code" TextMode="Number" runat="server" ID="RegVerifyCode" Visible="false" />

                        </div>

                        <asp:Button Text="Verify"  runat="server" CssClass="btn btn-1" ID="RegVerifyButton" OnClick="RegVerifyButton_Click"  Visible="false"/>
              

                        <asp:Label ID="RegCodeVerifyText" runat="server" Text="Password reset successfully" Visible="false"></asp:Label>



                    </div>

                </div>

            </div>

        </div>

        </section>
</asp:Content>
