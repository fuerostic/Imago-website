<%@ Page Title="" Language="C#" MasterPageFile="~/Imago.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Imago_Website.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Welcome to Imago</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Home section begin -->


    <section class="home d-flex">
       

            <div class="row">
                <div class="col-lg-auto">
                    <div id="carouselExampleCaptions" class=" my-carousel carousel slide carousel-fade" data-bs-ride="carousel">
                  <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  </div>
                  <div class="carousel-inner">
                    <div class="carousel-item active">

                      
                      <img src="Assets/Images/dea-piratedea-e9KxYQl2L3c-unsplash.jpg" class="d-block w-100" alt="...">
                      <div class="carousel-caption d-none d-md-block">
                        <h5>First slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="Assets/Images/elnaz-asadi-N1gqDai6A08-unsplash.jpg" class="d-block w-100" alt="...">
                      <div class="carousel-caption d-none d-md-block">
                        <h5>Second slide label</h5>
                        <p>Some representative placeholder content for the second slide.</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="Assets/Images/katrin-hauf-kVXrr7x-3Q0-unsplash.jpg" class="d-block w-100" alt="...">
                      <div class="carousel-caption d-none d-md-block">
                        <h5>Third slide label</h5>
                        <p>Some representative placeholder content for the third slide.</p>
                      </div>
                    </div>
                  </div>
                  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                  </button>
                  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                  </button>
                </div>
                </div>         
            </div>
    </section>



    <!--Home section end  -->


    <!-- Features section begin-->

    <section class="features section-padding">
        <div class="container">
            <div class="row feature-item">
                <div class=" col-lg-6 col-md-8">
                    <div class="features-img">
                        <img src="Assets/Images/stephanie-ronquillo-5ks2TMo2YPE-unsplash.jpg" alt="Alternate Text" />
                    </div>

                </div>
                <div class="col-lg-6 col-md-7">

                    <div class="section-title">
                        <h2>Draw your imaginataion</h2>
                    </div>

                    <div class ="features-text">
                        <p>
                            Our drawing tools provides flexible drawing components. If you want to unleash your 
                            inner artist you can use this tools and create your next masterpiece. Our tool provides 
                            wide range of colours, strokes and ability to save your work in your local computer.
                        </p>

                    </div>
                </div>

            </div>

            <div class="row feature-item">

                <div class="col-lg-6 col-md-7">

                    <div class="section-title">
                        <h2>Redefine your moments</h2>
                    </div>

                    <div class ="features-text">
                        <p>
                            Our online image editing tool allows you to edit your favourite photos online 
                            without going through the hassles of installing expensive softwares in your local machine. 
                            Our image editing tool is equipt with most of the tools for your need, allowing you to 
                            redefine the moments your dearly hold in your memory.
                        </p>

                    </div>
                </div>

                <div class=" col-lg-6 col-md-8">
                    <div class="features-img">
                        <img src="Assets/Images/stephanie-ronquillo-5ks2TMo2YPE-unsplash.jpg" alt="Alternate Text" />
                    </div>

                </div>
                

            </div>

            <div class="row feature-item">
                <div class=" col-lg-6 col-md-8">
                    <div class="features-img">
                        <img src="Assets/Images/stephanie-ronquillo-5ks2TMo2YPE-unsplash.jpg" alt="Alternate Text" />
                    </div>

                </div>
                <div class="col-lg-6 col-md-7">

                    <div class="section-title">
                        <h2>Classify your image</h2>
                    </div>

                    <div class ="features-text">
                        <p>
                            Our image classification tool uses artificial intelligence to classify various 
                            elements exist in the image. This is very useful for recognizing various person or species in 
                            a single image. Try our classification tool and get amazed. 
                        </p>

                    </div>
                </div>

            </div>


        </div>

    </section>

    <!-- Features section end-->

    <!-- Tools section begin-->




    <section class="tools section-padding" id="tools">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Our Image <span>Tools</span></h2>

                    </div>

                </div>

            </div>

            <div class="row justify-content-center">
                <div class="col-lg-4 col-md-6">
                    <div class="tools-item">
                        <img src="Assets/Icons/brush-fill.svg" alt="Drawing page" />
                        <h3>Drawing tool</h3>
                        <p>Use our drawing tool to create any art from your imagination.</p>
                        <a href="DrawingPage.aspx" class="btn btn-1">Try drawing tools</a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="tools-item">
                        <img src="Assets/Icons/camera.svg" alt=""/>
                        <h3>Image Editor</h3>
                        <p>Use this online image editing tool to make your photos more defined.</p>
                        <a href="ImageEditor.aspx" class="btn btn-1">Try drawing tools</a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="tools-item">
                         <img src="Assets/Icons/file-earmark-person.svg" alt="" />
                        <h3>Image Classifier</h3>
                        <p>Use this online image classifier to classify diffrent elements using artificial intelligence. </p>
                        <a href="ImageClassifier.aspx" class="btn btn-1">Try drawing tools</a>
                    </div>
                </div>

            </div>

        </div>

    </section>


    <!-- Tools section end-->

    <!-- Generator section begin-->


    <section class="generator section-padding" id="generators">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-6 col-md-7">
                    <div class="generator-section-title">
                        <h2>QR code generator</h2>
                    </div>

                    <div class ="generator-text">
                        <p>
                            A QR code is a type of matrix barcode invented in 1994 by the Japanese automotive company Denso Wave. 
                            A barcode is a machine-readable optical label that can contain information about the item to which it is attached.
                        </p>

                    </div>
                </div>

                <div class=" col-lg-6 col-md-8">
                    <div class="generator-img ">
                        <p>Use QR code generator to generate QR code from text.</p>
                        <a href="QrCodeGenerator.aspx" class="btn btn-2">Try drawing tools</a>
                    </div>

                </div>

            </div>




        </div>

    </section>


    <section class="meme-generator section-padding">
        <div class="container">
            
            <div class="row">

                <div class=" col-lg-6 col-md-8">
                    <div class="meme-generator-img ">
                        <p>Use our meme generator to create memes you desire. </p>
                        <a href="MemeGenerator.aspx" class="btn btn-2">Try drawing tools</a>
                    </div>

                </div>
                <div class="col-lg-6 col-md-7">
                    <div class="meme-generator-section-title">
                        <h2>Create memes from your idea</h2>
                    </div>

                    <div class ="meme-generator-text">
                        <p>
                            Meme is a verypopular form of entertainment in todays world.
                            Memes (discrete units of knowledge, gossip, jokes and so on) are to culture what genes are to life. Just as biological evolution is driven by the survival of the fittest genes in the gene pool,
                            cultural evolution may be driven by the most successful memes.
                        </p>

                    </div>
                </div>

                

            </div>




        </div>

    </section>


    <!-- Genrator section end-->

    <!-- FAQ section start-->

    <section class="faq section-padding" id="faq">

        <div class="container">
            <div class="row justify-content-center">

                <div class="çol-lg-8">
                    <div class="section-title">
                        <h2>Frequently <span>asked questions</span></h2>

                    </div>

                </div>

            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10">
                     <div id="accordion">
                        <div class="card">
                          <div class="card-header">
                            <a class="btn" data-bs-toggle="collapse" href="#collapseOne" onclick="this.blur();" onfocus="this.blur();">
                              Do I need to install any software to use these tools?
                            </a>
                          </div>
                          <div id="collapseOne" class="collapse show" data-bs-parent="#accordion">
                            <div class="card-body">
                              No. Our tools you can use in this website is completly server side implemented. That means whatever tools you want to use are user ready in server side. You dont require to install any external software other than your browse to use this.
                            </div>
                          </div>
                        </div>
                        <div class="card">
                          <div class="card-header">
                            <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseTwo" onclick="this.blur();" onfocus="this.blur();">
                            Can I save my modified images after using tools?
                          </a>
                          </div>
                          <div id="collapseTwo" class="collapse" data-bs-parent="#accordion">
                            <div class="card-body">
                              Yes. Our Image editor, Drawing tools, Meme Generator provides functionality to save your image in your local machine. Other than that other features do not contain this fucntion as not required. 
                            </div>
                          </div>
                        </div>
                        <div class="card">
                          <div class="card-header">
                            <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseThree" onclick="this.blur();" onfocus="this.blur();">
                              Are these services free of cost?
                            </a>
                          </div>
                          <div id="collapseThree" class="collapse" data-bs-parent="#accordion">
                            <div class="card-body">
                              Sure. All of your tools and services are free to use. However, we insist our user to create an account for getting the best experience.
                            </div>
                          </div>
                        </div>
                      </div>

                </div>

            </div>

        </div>

    </section>


    <!-- FAQ section end-->


     <!-- Contact section start-->

    <section class="contact section-padding" id="contact">
        <div class=" container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="section-title">
                        <h2>get in <span>touch</span></h2>
                    </div>     
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="contact-info">
                        <h3>For any quesries and support </h3>
                        <div class="contact-info-item">
                            <img src="Assets/Icons/file-earmark-person.svg" alt="" />
                            <h4>Company Location</h4>
                            <p>kuet , khulna- 9203</p>

                        </div>
                        <div class="contact-info-item">
                            <img src="Assets/Icons/file-earmark-person.svg" alt="" />
                            <h4>Write to us</h4>
                            <p>info@gmail.com</p>

                        </div>
                        <div class="contact-info-item">
                            <img src="Assets/Icons/file-earmark-person.svg" alt="" />
                            <h4>Call us on</h4>
                            <p>00 11 22 333 444</p>

                        </div>

                    </div>
                </div>
                <div class="col-lg-8 col-md-7">
                    <div class="contact-form">
                        <form action="/" method="post">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Your Name" BorderStyle="Outset" CssClass="form-control" TextMode="SingleLine"></asp:TextBox> 
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Your Email" BorderStyle="Outset" CssClass="form-control" TextMode="Email"></asp:TextBox> 
                                    </div>
                                </div>
                                 
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Your Phone" BorderStyle="Outset" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                                    </div>

                                </div>

                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Subject" BorderStyle="Outset" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
                                    </div>

                                </div>

                            </div>

                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Your Message" BorderStyle="Outset" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>

                                </div>

                            </div>

                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <asp:Button ID="Button1" runat="server" Text="Send Message"  CssClass="btn btn-1" OnClick="Button1_Click" />
                                        <asp:Label Text="" runat="server" ID="SentConfirmationText" />
                                    </div>

                                </div>

                            </div>
                        </form>

                    </div>
                </div>

            </div>
        </div>
    </section>



    <!-- Contact section end-->

</asp:Content>
