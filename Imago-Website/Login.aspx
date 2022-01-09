<%@ Page Title="" Language="C#" MasterPageFile="~/Imago.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Imago_Website.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login page</title>
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
                        <h1 class="text-base text-primary text-uppercase mb-4">Login Here</h1> 
                        <h2 class="mb-4">Welcome Back!</h2>

                        <div class="form-group mb-4">
                            <asp:TextBox required="true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Your Email" TextMode="Email" runat="server" ID="loginMail" />

                        </div>

                        <div class="form-group mb-4">
                            <asp:TextBox required="true" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Your Passoword" TextMode="Password" runat="server" ID="loginPass" />

                        </div>

                        <div class="form-group mb-4">
                            <div class="custom-control custom-checkbox">
                                <asp:CheckBox Text="&nbsp&nbsp&nbspRemember Me" runat="server" id="rememberLogin"/>

                            </div>

                        </div>

                        <asp:Button Text="LOGIN" CssClass="btn btn-1" runat="server" ID="loginButton" OnClick="Unnamed2_Click" />

                        <asp:Label Text="" runat="server" ID="validationText" />

                        <h3 class="h6 text-uppercase mb-0 mt-5">Don't have an account?  <a href="Register.aspx">Register here</a> </h3>
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
