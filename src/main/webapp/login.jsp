
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="/logindkdn.css">
</head>
<body>
<div id="logreg-forms">
    <form class="form-signin" action="/dangnhap" method="post">
        <p class="text-danger">${mess}</p>
        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
        <div class="social-login">
            <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign in with Facebook</span> </button>
            <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign in with Google+</span> </button>
        </div>
        <p style="text-align:center"> OR  </p>
        <div class="input-group">
            <input type="username" name="username" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="">
        </div>

        <div class="input-group">
            <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
        </div>

        <div class="input-group">
            <button type="submit" class="btn btn-md btn-rounded btn-block form-control submit" ><i class="fas fa-sign-in-alt"></i> Sign in</button>
        </div>

        <a href="#" id="forgot_pswd">Forgot password?</a>
        <hr>
        <!-- <p>Don't have an account!</p>  -->
        <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>
    </form>
    <%-----------------------------------------đang nhập tài khoản--------------------------------------------------%>
    <form action="#" class="form-reset">
        <input type="email" id="resetUsername" class="form-control" placeholder="Email" required="" autofocus="">
        <button class="btn btn-primary btn-block" type="submit">Reset Password</button>
        <a href="#" id="cancel_reset"><i class="fas fa-angle-left"></i> Back</a>
    </form>

    <form class="form-signup" action="/dangki"  method="post">
        <div class="social-login">
            <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign up with Facebook</span> </button>
        </div>
        <div class="social-login">
            <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign up with Google+</span> </button>
        </div>

        <p style="text-align:center">OR</p>

        <input type="text" id="user-email" name="email" class="form-control" placeholder="Email" required="" autofocus="">
        <input type="username" name="username" id="user-username" class="form-control" placeholder="Username" required autofocus="">
        <input type="password" name="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
        <input type="password" name="confirmPassword" id="user-repeatpass" class="form-control" placeholder="Confirm Password" required autofocus="">

        <div class="input-group">
            <button class="btn btn-md btn-block submit" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
        </div>

        <a href="#" id="cancel_signup"><i class="fa fa-angle-left"></i> Back</a>
    </form>
    <br>

</div>

</body>
<script>
    function toggleResetPswd(e){
        e.preventDefault();
        $('#logreg-forms .form-signin').toggle() // display:block or none
        $('#logreg-forms .form-reset').toggle() // display:block or none
    }

    function toggleSignUp(e){
        e.preventDefault();
        $('#logreg-forms .form-signin').toggle(); // display:block or none
        $('#logreg-forms .form-signup').toggle(); // display:block or none
    }

    $(()=>{
        // Login Register Form
        $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
        $('#logreg-forms #cancel_reset').click(toggleResetPswd);
        $('#logreg-forms #btn-signup').click(toggleSignUp);
        $('#logreg-forms #cancel_signup').click(toggleSignUp);
    })
</script>
</html>
