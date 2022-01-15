<%@ Page Title="" Language="C#" MasterPageFile="~/Imago.Master" AutoEventWireup="true" CodeBehind="ForgetPass.aspx.cs" Inherits="Imago_Website.ForgetPass" %>
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

                        <h1 class="text-base text-primary text-uppercase mb-4">Reset Password</h1> 
                        <h2 class="mb-4">Enter your mail</h2>

                        

                        <div class="form-group mb-4">
                            <asp:TextBox CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Your Email Address" TextMode="Email" runat="server" ID="verifyMail" />

                        </div>
          

                        <asp:Button Text="Send Code" CssClass="btn btn-1" runat="server" ID="SendMailButton" OnClick="SendMailButton_Click" />

                        <br />
                        <br />
                        <asp:Label ID="sentText" runat="server" Text="Verification code sent" Visible="false"></asp:Label>
                        <br />


                        <div class="form-group mb-4">
                            <asp:TextBox CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Verification Code" TextMode="Number" runat="server" ID="verifyCode" />

                        </div>

                        <asp:Button Text="Verify" CssClass="btn btn-1" runat="server" ID="VerifyButton" OnClick="VerifyButton_Click" />

                        <asp:Label ID="codeVerifyText" runat="server" Text="Password reset successfully" Visible="false"></asp:Label>

                        <div class="form-group mb-4">
                            <asp:TextBox CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Enter your new password" TextMode="Password" runat="server" ID="ResPass1" Visible="false" />

                        </div>

                        <div class="form-group mb-4">
                            <asp:TextBox  CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Confirm your new password" TextMode="Password" runat="server" ID="ResPass2" Visible="false" />

                        </div>

                        <asp:Button Text="Reset Password" CssClass="btn btn-1" runat="server" ID="ResetPassButton" Visible="false" OnClick="ResetPassButton_Click" />
                       

                        <asp:Label ID="resetText" runat="server" Text="Password reset successfully" Visible="false"></asp:Label>
<%--                        <asp:Label Text="" runat="server" ID="validationText" />

                        <h3 class="h6 text-uppercase mb-0 mt-5"> <a href="Register.aspx">Forgot password</a> </h3>

                        <h3 class="h6 text-uppercase mb-0 mt-5">Don't have an account?  <a href="Register.aspx">Register here</a> </h3>--%>
                    </div>

                    

                </div>

            </div>

        </div>






<%--        <div class="page-holder w-100 d-flex flex-wrap" >
            <div class="container-fluid px-x1-5">
                <section class="py-5">
                    <div class="row">

                        <div class="col-lg-5">
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="h6 text-uppercase mb-0">Already have an account login here</h3>

                                </div>
                                <div class="card-body">
                                    <a href="#" type="button" class="btn btn-primary">Login</a>

                                </div>

                            </div>

                        </div>

                        <div class="col-lg-5">
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="h6 text-uppercase mb-0">Don't have an account? Register here</h3>

                                </div>
                                <div class="card-body">
                                    <a href="#" type="button" class="btn btn-primary">Register</a>

                                </div>

                            </div>

                        </div>

                    </div>

                </section>



            </div>

        </div>--%>




<%--        <div id="login-box">
            <div id="login-main"></div>

            <div id="loginForm">
                <h1>LOGIN</h1>
                <asp:TextBox runat="server" ID="login_email" placeholder="Email" BorderStyle="Outset" CssClass="form-control" TextMode="Email" />
                <asp:TextBox ID="login_password" runat="server" placeholder="Password" BorderStyle="Outset" CssClass="form-control" TextMode="Password"/>
                <asp:Button ID="btn_login" runat="server" Text="Login"  CssClass="btn btn-1" />

            </div>

            <div id="registerForm">
                <h1>Register</h1>
                <asp:TextBox runat="server" ID="register_email" placeholder="Email" BorderStyle="Outset" CssClass="form-control" TextMode="Email" />
                <asp:TextBox ID="register_passoword" runat="server" placeholder="Password" BorderStyle="Outset" CssClass="form-control" TextMode="Password"/>
                <asp:Button ID="btn_register" runat="server" Text="register"  CssClass="btn btn-1" />

            </div>

            <div id="login_msg"> Have an account? </div>
            <div id="signup_msg"> Don't have an account?</div>

            <asp:Button Text="LOGIN" runat="server" CssClass="login-button" />
            <asp:Button Text="REGISTER" runat="server" CssClass="signup-button" />
            
            

        </div>--%>

    </section>
</asp:Content>
