<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
	<script src="https://kit.fontawesome.com/0c1fc61e64.js" crossorigin="anonymous"></script>

    <title>BeeForum</title>
	<link rel="shortcut icon" type="image/png" href="/vendor/devdojo/chatter/assets/images/favico.png"/>
	<!--Font-->
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Charmonman&family=Montserrat&family=Nunito&family=Pacifico&display=swap" rel="stylesheet">
	
	@if( Request::is( Config::get('chatter.routes.home')) )
    <title>BeeForum</title>
    @elseif( Request::is( Config::get('chatter.routes.home') . '/' . Config::get('chatter.routes.category') . '/*' ) && isset( $discussion ) )
    <title>{{ $discussion->category->name }} - BeeForum</title>
    @elseif( Request::is( Config::get('chatter.routes.home') . '/*' ) && isset($discussion->title))
    <title>{{ $discussion->title }} - BeeForum</title>
    @endif

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
	@if(Request::is( Config::get('chatter.routes.home') ) || Request::is( Config::get('chatter.routes.home') . '/*' ))
    <!-- LINK TO YOUR CUSTOM STYLESHEET -->
    <link rel="stylesheet" href=".../assets/css/bee.css" />
    @endif
	@yield('css')
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
					
					
                    <!-- Branding Image -->
                    <a class="navbar-brand" href="{{ url('/beeforum') }}"><i class="fab fa-android"></i>
                         BeeForum
                    </a>
                </div>
				
                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    <ul class="menu">	
				   </ul>
					<form action="{{URL::to('search')}}" method="POST">
						{{csrf_field()}}
                        <div class="search-box">
                        <input class="search-txt" type="text" name="key" placeholder="@lang('chatter::intro.keyword')">
                        <a class="search-btn"><i class="fas fa-search"></i></a></div>
                   </form>
					
                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
						
                        <!-- Authentication Links -->
                        @if (Auth::guest())
                            <li><a href="{{ route('login') }}">@lang('chatter::intro.login')</a></li>
                            <li><a href="{{ route('register') }}">@lang('chatter::intro.register')</a></li>
                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    <img src="/uploads/avatars/{{ Auth::user()->avatar }}" style="width:38px; height:38px; position:absolute; top:5px; left:-30px; border-radius:50%">
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu" role="menu">
                                     <li><a href="{{ url('/profile') }}">@lang('chatter::intro.your_info')  <i class="fas fa-user-alt"></i></a></li>
									 <li><a href="{{ url('/about') }}">@lang('chatter::intro.about_us')  <i class="fas fa-child"></i></a></li>
                                     <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
											@lang('chatter::intro.logout')  <i class="fas fa-sign-out-alt"></i>
                                        </a>
                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
									
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endif
                    </ul>
                </div>
            </div>
        </nav>

        @yield('content')
    </div>
	
	@include('footer')

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
	<script>
	$(document).ready(function(){
  for (var i=1; i <= $('.slider__slide').length; i++){
    $('.slider__indicators').append('<div class="slider__indicator" data-slide="'+i+'"></div>')
  }
  setTimeout(function(){
    $('.slider__wrap').addClass('slider__wrap--hacked');
  }, 1000);
})

function goToSlide(number){
  $('.slider__slide').removeClass('slider__slide--active');
  $('.slider__slide[data-slide='+number+']').addClass('slider__slide--active');
}

$('.slider__next, .go-to-next').on('click', function(){
  var currentSlide = Number($('.slider__slide--active').data('slide'));
  var totalSlides = $('.slider__slide').length;
  currentSlide++
  if (currentSlide > totalSlides){
    currentSlide = 1;
  }
  goToSlide(currentSlide);
})
	
</script>
	@yield('js')
</body>
</html>
