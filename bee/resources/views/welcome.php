<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/png" href="/vendor/devdojo/chatter/assets/images/favico.png"/>
        <title>BeeForum</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Charm:wght@700&family=Montserrat&family=Nunito&family=Pacifico&display=swap" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-image: linear-gradient(120deg, #e0c3fc 0%, #8ec5fc 100%);
                color: #000000;
                font-family: 'Nunito', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
			
			.xin{
				font-family: 'Pacifico', cursive;
				font-size: 72px;
                background-image: linear-gradient(-20deg, #fc6076 0%, #ff9a44 100%);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
			}
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">

            <div class="content">
                <div class="title m-b-md">
                   Welcome To
					<div class="xin">BeeForum</div>
                </div>
                  
                <div class="links">
                   
					<a href="{{ url('/') }}">For Admin</a>
					<a href="http://localhost:3232/beeforum">For Guest</a>
                    <a href="http://localhost:3232/login">Login</a>
                    <a href="http://localhost:3232/register">Register</a>
                    
                </div>
				
            </div>
        </div>
    </body>
</html>
