<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Login</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
     <!--add title bar icon-->
    <link rel="icon" href="images/white.ico" type="image/x-icon" />

    <link
      href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
      rel="stylesheet"
    />

    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />

    <link rel="stylesheet" href="CSS/style2.css" />
   
    <!-- my css -->
      

    <link rel="stylesheet" href="CSS/footer.css" />
    
        <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    
  
  </head>
  <body>
  
    <input type="hidden" id="checkLogin" value="<%=request.getAttribute("checkLogin")%>">
    
 <div style='position:absolute;zindex:0;left:0;top:0;width:100%;height:100%'>
           <img src='images/background.jpg' style='width:100%;height:100%' alt='[]' />
       </div>
    <section class="ftco-section">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-6 text-center mb-5"></div>
        </div>
        <div class="row justify-content-center">
          <div class="col-md-7 col-lg-5">
            <div class="wrap">
           
              <div class="login-wrap p-4 p-md-5">
                <div class="d-flex">
                  <div class="w-100">
                    <h3 class="mb-4">Sign In</h3>
                  </div>
                  <div class="w-100">
                    <p class="social-media d-flex justify-content-end">
                      <a
                        href="#"
                        class="social-icon d-flex align-items-center justify-content-center"
                        ><span class="fa fa-facebook"></span
                      ></a>
                      <a
                        href="#"
                        class="social-icon d-flex align-items-center justify-content-center"
                        ><span class="fa fa-twitter"></span
                      ></a>
                    </p>
                  </div>
                </div>
                <form action="login" class="signin-form" method="post">
                  <div class="form-group mt-3">
                    <input
                      type="text"
                      class="form-control"
                      id="Username"
                      name="username"
                      required
                    />
                    <label class="form-control-placeholder" for="username"
                      >Username</label
                    >
                  </div>
                  <div class="form-group">
                    <input
                      id="pass"
                      name="pass"
                      type="password"
                      class="form-control"
                      required
                    />
                    <label class="form-control-placeholder" for="password"
                      >Password</label
                    >
                    <span
                      toggle="#password-field"
                      class="fa fa-fw fa-eye field-icon toggle-password"
                    ></span>
                  </div>
                  <div class="form-group">
                    <button
                      type="submit"
                      class="form-control btn btn-primary rounded submit px-3"
                    >
                      Sign In
                    </button>
                  </div>
                  <div class="form-group d-md-flex">
                    <div class="w-50 text-left">
                      <label class="checkbox-wrap checkbox-primary mb-0"
                        >Remember Me
                        <input type="checkbox" checked />
                        <span class="checkmark"></span>
                      </label>
                    </div>
                    <div class="w-50 text-md-right">
                      <a href="#">Forgot Password</a>
                    </div>
                  </div>
                </form>
                <p class="text-center">
                  Not a member? <a  href="signup.jsp">Sign Up</a>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
        <!--footer begin-->
    <footer class="bg-dark text-white pt-5 pb-4">
      <div class="container text-center text-md-left">
        <div class="row text-center text-md-left">
          <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
            <hr class="mb-4" />
            <p class="text-light slogan">
              Finally, a worthy partner who provides best and powerful Computer
              parts in Sri Lanka for you.<br />Since 2006
            </p>
          </div>

          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
            <h3 class="text-uppercase mb-4 font-weight-bold text-info">
              About Us
            </h3>
            <hr class="mb-4" />
            <p class="text-uppercase">
              <a href="#" class="text-light footer-topic fs-5">Our Story</a>
              <br /><br />
              <a href="#" class="text-light footer-topic fs-5">Team</a>
              <br /><br />
              <a href="#" class="text-light footer-topic fs-5">Career</a>
              <br />
            </p>
          </div>

          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
            <h3 class="text-uppercase mb-4 font-weight-bold text-info">
              Useful Links
            </h3>
            <hr class="mb-4" />
            <p class="text-uppercase">
              <a href="#" class="text-light footer-topic fs-5"
                >Cookies policy</a
              >
              <br /><br />
              <a href="#" class="text-light footer-topic fs-5"
                >Terms of services</a
              >
              <br /><br />

              <a href="#" class="text-light footer-topic fs-5"
                >Privacy policy</a
              >
              <br />
            </p>
          </div>
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
            <h3 class="text-uppercase mb-4 font-weight-bold text-info">
              News Letter
            </h3>
            <hr class="mb-4" />

            <div class="mail-wrapper">
              <form action="#">
                <input type="text" placeholder="yourmail@gmail.com" />
                <br /><br />

                <button
                  type="submit"
                  name="newsletter"
                  class="btn btn-outline-success"
                >
                  Subscribe
                </button>
              </form>
            </div>
          </div>
          <hr class="mb-4" />
          <div class="row d-flex justify-content-center">
            <div>
              <p>
                &copy;Copyright 2022. All rights reserved.<br />Developed by
                SLIIT Y2S1 4.01 Group members
              </p>
            </div>
          </div>
        </div>
      </div>
    </footer>

    <script src="JS/jquery.min.js"></script>
    <script src="JS/popper.js"></script>
    <script src="JS/bootstrap.min.js"></script>
    <script src="JS/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
      var userexist = document.getElementById("checkLogin").value;
      if (userexist == "False") {
        swal("sorry", "User Name or password Not Valid", "error");
      }
    </script>
  </body>
</html>
