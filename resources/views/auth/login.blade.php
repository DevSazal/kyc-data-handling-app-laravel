<!DOCTYPE html>
<html>
    <head>
        <title>Wee Login</title>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
        <link href="css/style.css" type="text/css" rel="stylesheet">
        <link href="css/fonts/font.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <div class="login_outer">
            <div class="login_logo">
                <a href="#">
                    <img src="app/images/icon.png" alt="">
                </a>
            </div>
            <div class="login_box">
                <form method="POST" action="{{ route('login') }}">
                    @csrf
                    <div class="login_group">
                        <input id="email" type="email" class="login_control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus placeholder="Email (admin@mail.com)">

                        

                    </div>
                    <div class="login_group">
                        <input id="email" type="password" class="login_control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="password" value="{{ old('email') }}" required autofocus placeholder="Password (123456)">

                    </div>
                    <div class="login_group">
                        @if ($errors->has('email'))
                        <span class="" role="alert">
                            <strong style="color: white;text-align:center">*{{$errors->first('email') }}</strong>
                        </span>
                    @endif

                    @if ($errors->has('password'))
                        <span class="" role="alert">
                            <strong style="color: white;text-align:center">*{{$errors->first('password') }}</strong>
                        </span>
                    @endif
                    </div>
                    
                    <div class="login_group">
                        <button type="submit" class="btn_login">Login</button>
                    </div>
                </form>
            </div>
        </div>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript"></script>
        <script src="js/custom.js" type="text/javascript"></script>
    </body>
</html>





























