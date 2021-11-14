<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Imago_Website.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="with=device-width, initial-scale=1.0"/>
    <title>Welcome to Imago</title>


    <link rel="stylesheet" href="Content/owl.carousel.min.css"/>

    <!-- bootstrap -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <!-- main css -->
    <link rel="stylesheet" href="Content/style.css"/>
    
</head>
<body>

    <!--Navbar section start  -->
    
    <nav class="navbar navbar-expand-md fixed-top">
      <div class="container">
        <a class="navbar-brand" href="index.aspx">Imago</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link active" href="index.aspx">Home</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Tools</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Link</a></li>
                <li><a class="dropdown-item" href="#">Another link</a></li>
                <li><a class="dropdown-item" href="#">A third link</a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Generator</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Link</a></li>
                <li><a class="dropdown-item" href="#">Another link</a></li>
                <li><a class="dropdown-item" href="#">A third link</a></li>
              </ul>
            </li>  
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Sign Up</a>
            </li> 

          </ul>
        </div>
      </div>
    </nav>



    <!--Navbar section end -->

    

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
                        <h2>Draw our way</h2>
                    </div>

                    <div class ="features-text">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                        </p>

                    </div>
                </div>

            </div>

            <div class="row feature-item">

                <div class="col-lg-6 col-md-7">

                    <div class="section-title">
                        <h2>Draw our way</h2>
                    </div>

                    <div class ="features-text">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
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
                        <h2>Draw our way</h2>
                    </div>

                    <div class ="features-text">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                        </p>

                    </div>
                </div>

            </div>


        </div>

    </section>

    <!-- Features section end-->



    <!-- Tools section begin-->




    <section class="tools section-padding">
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
                        <img src="Assets/Icons/brush-fill.svg" alt="" />
                        <h3>Drawing tools</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>
                        <a href="#" class="btn btn-1">Try drawing tools</a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="tools-item">
                        <img src="Assets/Icons/camera.svg" alt=""/>
                        <h3>Passport size photo</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>
                        <a href="#" class="btn btn-1">Try drawing tools</a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="tools-item">
                         <img src="Assets/Icons/file-earmark-person.svg" alt="" />
                        <h3>Image Classifier</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>
                        <a href="#" class="btn btn-1">Try drawing tools</a>
                    </div>
                </div>

            </div>

        </div>

    </section>


    <!-- Tools section end-->


    <!-- Generator section begin-->


    <section class="generator section-padding">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-6 col-md-7">
                    <div class="generator-section-title">
                        <h2>Draw our way</h2>
                    </div>

                    <div class ="generator-text">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                        </p>

                    </div>
                </div>

                <div class=" col-lg-6 col-md-8">
                    <div class="generator-img ">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>
                        <a href="#" class="btn btn-2">Try drawing tools</a>
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
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>
                        <a href="#" class="btn btn-2">Try drawing tools</a>
                    </div>

                </div>
                <div class="col-lg-6 col-md-7">
                    <div class="meme-generator-section-title">
                        <h2>Draw our way</h2>
                    </div>

                    <div class ="meme-generator-text">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.
                        </p>

                    </div>
                </div>

                

            </div>




        </div>

    </section>


    <!-- Genrator section end-->

    <!-- FAQ section start-->

    <section class="faq section-padding">

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
                              Collapsible Group Item #1
                            </a>
                          </div>
                          <div id="collapseOne" class="collapse show" data-bs-parent="#accordion">
                            <div class="card-body">
                              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                            </div>
                          </div>
                        </div>
                        <div class="card">
                          <div class="card-header">
                            <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseTwo" onclick="this.blur();" onfocus="this.blur();">
                            Collapsible Group Item #2
                          </a>
                          </div>
                          <div id="collapseTwo" class="collapse" data-bs-parent="#accordion">
                            <div class="card-body">
                              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                            </div>
                          </div>
                        </div>
                        <div class="card">
                          <div class="card-header">
                            <a class="collapsed btn" data-bs-toggle="collapse" href="#collapseThree" onclick="this.blur();" onfocus="this.blur();">
                              Collapsible Group Item #3
                            </a>
                          </div>
                          <div id="collapseThree" class="collapse" data-bs-parent="#accordion">
                            <div class="card-body">
                              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                            </div>
                          </div>
                        </div>
                      </div>

                </div>

            </div>

        </div>

    </section>


    <!-- FAQ section end-->





    <script src="Scripts/owl.carousel.min.js"></script>

    <script src="Scripts/bootstrap.bundle.min.js"></script>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <!-- main script -->
    <script src="Scripts/main.js"></script>
</body>
</html>
