<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="./public/style.css">

    <!-- w3 links -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


    <title>Login</title>
  </head>
  <body>
    <header>
        <div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
            <button class="w3-bar-item w3-button w3-large"
            onclick="w3_close()">Close &times;</button>
            <a href="#" class="w3-bar-item w3-button">Link 1</a>
            <a href="#" class="w3-bar-item w3-button">Link 2</a>
            <a href="#" class="w3-bar-item w3-button">Link 3</a>
        </div>
    </header>

    <main id="main">
        <div class="my-new-header">
            <button id="openNav" class="w3-button w3-xlarge my-hamburger-btn" onclick="w3_open()">&#9776;</button>
            <span>JCMS</span>
        </div>

        <div class="container-95">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <form action="Login" class="my-login-form" method="POST">
                        <div class="my-login-header">
                            <center>
                                <h4 class="">Login</h4>
                            </center>
                        </div>
                        <div class="my-login-content">
                            <div class="container-95 row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="username">Username</label>
                                        </div>
                                        <div class="col-md-8">
                                            <input type="text" name="username" id="username" name="username">
                                        </div>
                                    </div>                                    
                                </div>
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label for="password">Password</label>
                                        </div>
                                        <div class="col-md-8">
                                            <input type="password" name="password" id="password" name="password">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md">
                                            <center>
                                                <input type="submit" name="login" id="login" value="login">
                                            </center>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="row mt-3">
                                        <div class="col-md">
                                            <center>
                                                <a href="">Forgot Password ?</a>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>        
                <div class="col-md-4"></div>
            </div>
        </div>
    </main>

    <footer class="my-footer">
        <div class="my-footer-copyright container-95">
            Copyright @ JCMS 2019
        </div>
    </footer>
    

    <!-- sidebar js -->
    <script>
        function w3_open() {
            // document.getElementById("main").style.marginLeft = "25%";
            document.getElementById("mySidebar").style.width = "25%";
            document.getElementById("mySidebar").style.display = "block";
            // document.getElementById("openNav").style.display = 'none';
        }
        function w3_close() {
            // document.getElementById("main").style.marginLeft = "0%";
            document.getElementById("mySidebar").style.display = "none";
            // document.getElementById("openNav").style.display = "inline-block";
        }
    </script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>