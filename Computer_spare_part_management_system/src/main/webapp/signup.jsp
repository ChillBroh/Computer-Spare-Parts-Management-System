<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Signup Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   
    <!--add title bar icon-->
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
    
    <!--Bootstrap css-->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />

    <!-- MATERIAL DESIGN ICONIC FONT -->
    <link
      rel="stylesheet"
      href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css"
    />

    <!--Icons-->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />

    <!-- my css -->
    <link rel="stylesheet" href="CSS/style.css" />
   <link rel="stylesheet" href="CSS/index.css" />
    <link rel="stylesheet" href="CSS/footer.css" />
    
    
  </head>

  <body>
   
    <div
      class="wrapper"
      style="
        background-image: url('./images/redd-YYMVV-qMD6Q-unsplash.jpg');
        background-size: cover;
      "
    >
      <div class="inner">
        <div class="image-holder">
          <img src="images/laptop/Asus ROG Zephyrus G14 GA401QM.png" alt="" />
        </div>
        <form action="signup" method="post">
          <h3 class="text-start">Sign Up</h3>
          <div class="form-group">
            <input
              type="text"
              placeholder="First Name"
              class="form-control"
              name="fname"
              required
            />
            <input
              type="text"
              placeholder="Last Name"
              class="form-control"
              name="lname"
              required
            />
          </div>
          <div class="form-wrapper">
            <input
              type="text"
              placeholder="Username"
              class="form-control"
              name="username"
              required
            />
            <i class="fas fa-user mr-3"></i>
          </div>
          <div class="form-wrapper">
            <input
              type="email"
              placeholder="Email Address"
              class="form-control"
              name="email"
            />
            <i class="fas fa-envelope mr-3"></i>
          </div>
          <div class="form-wrapper">
            <input
              type="text"
              placeholder="phone"
              class="form-control"
              name="phone"
              required
            />
            <i class="fas fa-phone mr-3"></i>
          </div>
          <div class="form-wrapper">
            <input
              type="password"
              placeholder="Password"
              class="form-control"
              name="password"
               pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
              title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
            />
            <i class="fas fa-unlock-alt mr-3"></i>
          </div>
          <div class="form-wrapper">
            <input
              type="password"
              placeholder="Confirm Password"
              class="form-control"
              name="password"
              required
            />
            <i class="fas fa-unlock-alt"></i>
          </div>
          <button type="submit" name="reg-btn">
            Register
            <i class="fas fa-arrow-right"></i>
          </button>
        </form>
      </div>
    </div>

    <!--signup form end-->

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
    <!--footer end-->
  </body>

</html>
