<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <title>Welcome</title>
	<link rel="shortcut icon" type="image/png" href="{{ asset('us/images/favico.png') }}"/>
	
	<!--Font-->
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Charmonman&family=Montserrat&family=Nunito&family=Pacifico&display=swap" rel="stylesheet">

    <!-- CSS Files -->
    <link rel="stylesheet" type="text/css" href="{{ asset('us/css/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('us/css/font-awesome.css') }}">
    <link rel="stylesheet" href="{{ asset('us/css/about.css') }}">
    <link rel="stylesheet" href="{{ asset('us/css/owl-carousel.css') }}">

</head>

<body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    <!-- ***** Preloader End ***** -->


    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="{{ url('/beeforum') }}" class="logo">
                            BeeForum
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="#welcome" class="menu-item">Home</a></li>
                            <li class="scroll-to-section"><a href="#intro" class="menu-item">@lang('chatter::intro.introd')</a></li>
                            <li class="scroll-to-section"><a href="#about-us" class="menu-item">@lang('chatter::intro.about')</a>
							</li>
                            <li class="scroll-to-section"><a href="#contact-us" class="menu-item">@lang('chatter::intro.complain')</a></li>
                        </ul>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->


    <!-- ***** Welcome Area Start ***** -->
    <div class="welcome-area" id="welcome">

        <!-- ***** Header Text Start ***** -->
        <div class="header-text">
            <div class="container">
                <div class="row">
                    <div class="left-text col-lg-6 col-md-12 col-sm-12 col-xs-12"
                        data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
						<h1>@lang('chatter::intro.free_easy')</h1>
                        <p>@lang('chatter::intro.free_decrib')</p> 
                        <a href="#intro" class="main-button-slider">Take a trip</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Header Text End ***** -->
    </div>
    <!-- ***** Welcome Area End ***** -->

    <!-- ***** Features Big Item Start ***** -->
    <section class="section" id="intro">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12"
                    data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                    <div class="features-item">
                        <div class="features-icon">
                            <h2>01</h2>
                            <img src="{{ asset('us/images/elegant_ui.png') }}" alt="">
                            <h4>Elegant Design</h4>
                            <p>@lang('chatter::intro.elegant_decrib')</p>
                            <a href="#" class="main-button">
                                WooHoo
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12"
                    data-scroll-reveal="enter bottom move 30px over 0.6s after 0.4s">
                    <div class="features-item">
                        <div class="features-icon">
                            <h2>02</h2>
                            <img src="{{ asset('us/images/hieu_qua.png') }}" alt="">
                            <h4>@lang('chatter::intro.effective')</h4>
                            <p>@lang('chatter::intro.effect_decrib')</p>
                            <a href="#" class="main-button">
                                Xí Muội
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12"
                    data-scroll-reveal="enter right move 30px over 0.6s after 0.4s">
                    <div class="features-item">
                        <div class="features-icon">
                            <h2>03</h2>
                            <img src="{{ asset('us/images/use.png') }}" alt="">
                            <h4>@lang('chatter::intro.easy')</h4>
                            <p>@lang('chatter::intro.easy_decrib')</p>
                            <a href="#testimonials" class="main-button">
                                Hanuri
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Features Big Item End ***** -->

    <div class="left-image-decor"></div>

    <!-- ***** Features Big Item Start ***** -->
    <section class="section" id="promotion">
        <div class="container">
            <div class="row">
                <div class="left-image col-lg-5 col-md-12 col-sm-12 mobile-bottom-fix-big"
                    data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                    <img src="{{ asset('us/images/touch.png') }}" class="rounded img-fluid d-block mx-auto" alt="App">
                </div>
                <div class="right-text offset-lg-1 col-lg-6 col-md-12 col-sm-12 mobile-bottom-fix">
                    <ul>
                        <li data-scroll-reveal="enter right move 30px over 0.6s after 0.4s">
                            <img src="{{asset('us/images/security.png')}}" alt="">
                            <div class="text">
                                <h4>@lang('chatter::intro.security')</h4>
                                <p>@lang('chatter::intro.secure_decrib')</p>
                            </div>
                        </li>
                        <li data-scroll-reveal="enter right move 30px over 0.6s after 0.5s">
                            <img src="{{ asset('us/images/fast.png') }}" alt="">
                            <div class="text">
                                <h4>@lang('chatter::intro.fast')</h4>
                                <p>@lang('chatter::intro.fast_decrib')</p>
                            </div>
                        </li>
                        <li data-scroll-reveal="enter right move 30px over 0.6s after 0.6s">
                            <img src="{{ asset('us/images/exactly.png') }}" alt="">
                            <div class="text">
                                <h4>@lang('chatter::intro.accurate')</h4>
                                <p>@lang('chatter::intro.accurate_decrib')</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Features Big Item End ***** -->

    <div class="right-image-decor"></div>

    <!-- ***** Testimonials Starts ***** -->
    <section class="section" id="about-us">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="center-heading">
                        <h2><em>@lang('chatter::intro.about')</em></h2>
                        <p>We are all trying to our best.</p>
                    </div>
                </div>
                <div class="col-lg-10 col-md-12 col-sm-12 mobile-bottom-fix-big"
                    data-scroll-reveal="enter left move 30px over 0.6s after 0.4s">
                    <div class="owl-carousel owl-theme">
                        <div class="item service-item">
                            <div class="author">
                                <i><img src="{{ asset('us/images/ava_huy.png') }}" alt="Author One"></i>
                            </div>
                            <div class="about-content">
                                <ul class="stars">
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                </ul>
                                <h4>Quốc Huy</h4>
								<p>@lang('chatter::intro.tree_three')</p>
                                <span>WooHoo</span>
                            </div>
                        </div>
                        <div class="item service-item">
                            <div class="author">
                                <i><img src="{{ asset('us/images/thao.png') }}" alt="Second Author"></i>
                            </div>
                            <div class="about-content">
                                <ul class="stars">
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                </ul>
                                <h4>Mai Thảo</h4>
                                <p>@lang('chatter::intro.thao_quote')</p>
                                <span>Xí Muội</span>
                            </div>
                        </div>
                        <div class="item service-item">
                            <div class="author">
                                <i><img src="{{ asset('us/images/thuong.png') }}" alt="Author Third"></i>
                            </div>
                            <div class="about-content">
                                <ul class="stars">
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                    <li><i class="fa fa-star"></i></li>
                                </ul>
                                <h4>Minh Thương</h4>
                                <p>@lang('chatter::intro.thuong_quote')</p>
                                <span>Hanuri</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Testimonials Ends ***** -->


    <!-- ***** Footer Start ***** -->
    <footer id="contact-us">
        <div class="container">
            <div class="footer-content">
                <div class="row">
                    <!-- ***** Contact Form Start ***** -->
                    <div class="col-lg-6 col-md-12 col-sm-12">
                        <div class="contact-form">
                            <form id="contact" action="" method="post">
                                <div class="row">
                                    <div class="col-md-6 col-sm-12">
                                        <fieldset>
                                            <input name="name" type="text" id="name" placeholder="@lang('chatter::intro.name_enter')" required=""
                                                style="background-color: rgba(250,250,250,0.3);">
                                        </fieldset>
                                    </div>
                                    <div class="col-md-6 col-sm-12">
                                        <fieldset>
                                            <input name="email" type="text" id="email" placeholder="@lang('chatter::intro.email_enter')"
                                                required="" style="background-color: rgba(250,250,250,0.3);">
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-12">
                                        <fieldset>
                                            <textarea name="message" rows="6" id="message" placeholder="@lang('chatter::intro.complain_enter')"
                                                required="" style="background-color: rgba(250,250,250,0.3);"></textarea>
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-12">
                                        <fieldset>
                                            <button type="submit" id="form-submit" class="main-button">@lang('chatter::intro.send_click')</button>
                                        </fieldset>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- ***** Contact Form End ***** -->
                    <div class="right-content col-lg-6 col-md-12 col-sm-12">
                        <h2>@lang('chatter::intro.more_about') <i class="style_logo">BeeForum</i></h2>
                        <p>@lang('chatter::intro.morabou_decrib')</p>
                        <ul class="social">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="sub-footer">
                        <p>Copyright &copy; 2020 LIS

                        | Designed by <a rel="nofollow" href="">BeeTeam</a></p>
						<a href="{!! route('change-language', ['en']) !!}">@lang('chatter::intro.ta')</a> 
                        | <a href="{!! route('change-language', ['vi']) !!}">@lang('chatter::intro.tv')</a>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="{{ asset('us/js/jquery-2.1.0.min.js') }}"></script>

    <!-- Bootstrap -->
    <script src="{{ asset('us/js/popper.js') }}"></script>
    <script src="{{ asset('us/js/bootstrap.min.js') }}"></script>

    <!-- Plugins -->
    <script src="{{ asset('us/js/owl-carousel.js') }}"></script>
    <script src="{{ asset('us/js/scrollreveal.min.js') }}"></script>
    <script src="{{ asset('us/js/waypoints.min.js') }}"></script>
    <script src="{{ asset('us/js/jquery.counterup.min.js') }}"></script>
    <script src="{{ asset('us/js/imgfix.min.js') }}"></script>

    <!-- Global Init -->
    <script src="{{ asset('us/js/custom.js') }}"></script>

</body>
</html>