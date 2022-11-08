<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=\, initial-scale=1.0" />
    <title>NextGen</title>
    <!--add title bar icon-->
    <link rel="icon" href="/images/favicon.ico" type="image/x-icon" />

    <!--Bootstrap css-->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />

    <!-- UIkit CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/uikit@3.15.12/dist/css/uikit.min.css"
    />

    <!--My CSS file -->
    <link rel="stylesheet" href="./CSS/index.css" />
    <link rel="stylesheet" href="./CSS/footer.css" />

    <!--Icons-->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />

    <!-- UIkit JS -->
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.15.12/dist/js/uikit.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.15.12/dist/js/uikit-icons.min.js"></script>
  </head>
  <body>
    <!--header start-->
    <header id="header">
      <!--nav bar starts-->

      <div>
        <nav
          class="uk-navbar-container uk-letter-spacing-small uk-text-bold"
          id="nav-bar"
        >
          <div class="uk-container">
            <div class="uk-position-z-index" data-uk-navbar>
              <div class="uk-navbar-left">
                <a class="uk-navbar-item uk-logo" href="index.html">NextGen</a>
              </div>
              <div class="uk-navbar-left search-bar">
                <div class="uk-navbar-item">
                  <form class="uk-search uk-search-navbar">
                    <span uk-search-icon></span>
                    <input
                      class="uk-search-input"
                      type="search"
                      placeholder="Search"
                      aria-label="Search"
                    />
                  </form>
                </div>
              </div>
              <div class="uk-navbar-right">
                <ul
                  class="uk-navbar-nav uk-visible@m"
                  data-uk-scrollspy-nav="closest: li"
                >
                  <li>
                    <a href="#header">Home</a>
                  </li>
                  <li>
                    <a href="#projects">Products</a>
                  </li>
                  <li>
                    <a href="#about">About</a>
                  </li>
                  <li><a href="#team">Feedbacks</a></li>
                  <li>
                    <a href="#feedback">FAQ</a>
                  </li>
                  <li>
                    <a href="#contact">Contact</a>
                  </li>
                  <li>
                    <a href="#services"
                      ><button
                        id="username-btn"
                        class="uk-button uk-button-secondary uk-button-medium"
                      >
                        Ishara
                      </button></a
                    >
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </nav>
      </div>
      <!--nav bar end-->

      <br />
      <!--Slider start-->
      <div
        id="carouselExampleControls"
        class="carousel slide w-4 h-1"
        data-bs-ride="carousel"
      >
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img
              src="./images/slider 1.png"
              class="d-block w-50 h-100"
              alt=""
            />
          </div>
          <div class="carousel-item">
            <img
              src="./images/slider 2.jpg"
              class="d-block w-50 h-100"
              alt=""
            />
          </div>
          <div class="carousel-item">
            <img
              src="./images/slider 3.jpg"
              class="d-block w-50 h-100"
              alt=""
            />
          </div>
        </div>
        <button
          class="carousel-control-prev"
          type="button"
          data-bs-target="#carouselExampleControls"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          data-bs-target="#carouselExampleControls"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>

      <!--Slider end-->
      <br /><br /><br /><br /><br /><br />
      <!--welcome message -->
      <div class="container">
        <h1 class="welcome-msg uk-text-center font-monospace">
          Welcome to NextGen!
        </h1>
        <p class="text-Info uk-text-center fst-italic">
          Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ab mollitia
          quasi non Lorem ipsum dolor, sit amet consectetur adipisicing elit.
          Velit numquam dolorem Lorem, ipsum dolor sit amet consectetur
          adipisicing elit. Maxime officiis recusandae doloribus sapiente esse
          quo pariatur iure deleniti consequatur perspiciatis. Lorem ipsum dolor
          sit amet consectetur adipisicing elit. Quaerat ad facilis dicta libero
          ipsa, deleniti neque reprehenderit praesentium corporis harum unde
          reiciendis doloremque laborum culpa necessitatibus labore dolore natus
          saepe voluptate voluptatum? Quaerat quia delectus et earum perferendis
          minima nesciunt, obcaecati voluptatem aperiam consectetur deserunt ab
          officiis laboriosam possimus cum.
        </p>
        <div class="uk-text-center">
          <a
            href="#projects"
            class="uk-button uk-button-large uk-button-primary"
            >Learn More</a
          >
        </div>
      </div>
      <!--welcome message -->
    </header>
    <!--header end-->
    <br /><br />

    <br /><br />

    <hr class="uk-divider-icon uk-background-default" />

    <!--new arrivals container-->
    <div
      id="projects"
      class="uk-section uk-section-large uk-section-secondary uk-preserve-color-"
    >
      <div class="uk-container">
        <div
          class="uk-visible-toggle"
          tabindex="-1"
          data-uk-slider="autoplay: false"
        >
          <div class="uk-position-relative">
            <div
              class="uk-slider-container uk-box-shadow-medium uk-background-danger"
            >
              <ul class="uk-slider-items uk-child-width-1-1">
                <li>
                  <div class="uk-grid-collapse" data-uk-grid>
                    <div class="uk-width-1-2@s">
                      <img
                        src="./images/laptop/MSI GL65 LEOPARD 10SER.png"
                        alt="Slide"
                      />
                    </div>
                    <div class="uk-width-expand@s uk-flex uk-flex-middle">
                      <div class="uk-padding-large">
                        <h3
                          class="uk-text-uppercase uk-h5 uk-letter-spacing-small"
                        >
                          New Arrivals
                        </h3>
                        <h2 class="uk-heading-medium uk-margin-medium-top">
                          GL65 Leopard 10 SER
                        </h2>
                        <div>
                          Lorem ipsum dolor sit amet consectetur adipisicing
                          elit. Dolorum maiores assumenda ducimus ipsam esse
                          earum asperiores neque voluptate, qui officiis
                          aspernatur ab consequatur repellendus sed incidunt eos
                          distinctio doloribus labore molestiae? Neque, quod
                          quibusdam eius veritatis voluptatibus aliquam deserunt
                          iusto. Aperiam animi quod dignissimos aspernatur
                          doloremque voluptatum vitae possimus quaerat.
                        </div>

                        <h3
                          class="uk-margin-remove uk-text-uppercase uk-h5 uk-letter-spacing-small"
                        >
                          <a class="hvr-forward" href="#"
                            >More Details<span
                              class="uk-margin-left"
                              data-uk-icon="arrow-right"
                            ></span
                          ></a>
                        </h3>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="uk-grid-collapse" data-uk-grid>
                    <div class="uk-width-1-2@s">
                      <img
                        src="./images/laptop/Asus Zenbook Pro Duo UX582.png"
                        alt="Slide"
                      />
                    </div>
                    <div class="uk-width-expand@s uk-flex uk-flex-middle">
                      <div class="uk-padding-large">
                        <h3
                          class="uk-text-uppercase uk-h5 uk-letter-spacing-small"
                        >
                          New Arrivals
                        </h3>
                        <h2 class="uk-heading-small uk-margin-medium-top">
                          Asus Zenbook Pro Duo
                        </h2>
                        <div>
                          Lorem, ipsum dolor sit amet consectetur adipisicing
                          elit. Consequuntur possimus aliquid quos nesciunt
                          iusto nostrum reiciendis corporis perspiciatis!
                          Laborum sunt nemo et, libero accusantium perspiciatis
                          consequuntur quam deserunt. Accusamus voluptatum
                          quaerat aut fuga at, culpa voluptate, nesciunt sunt
                          laborum tenetur nihil labore illum in consequuntur.
                          Placeat necessitatibus eligendi id voluptate.
                        </div>

                        <h3
                          class="uk-margin-remove uk-text-uppercase uk-h5 uk-letter-spacing-small"
                        >
                          <a class="hvr-forward" href="#"
                            >More Details<span
                              class="uk-margin-left"
                              data-uk-icon="arrow-right"
                            ></span
                          ></a>
                        </h3>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
            <div class="uk-hidden@l">
              <a
                class="uk-position-center-left uk-position-small"
                href="#"
                data-uk-slidenav-previous
                data-uk-slider-item="previous"
              ></a>
              <a
                class="uk-position-center-right uk-position-small"
                href="#"
                data-uk-slidenav-next
                data-uk-slider-item="next"
              ></a>
            </div>

            <div class="uk-visible@l uk-light">
              <a
                class="uk-position-center-left-out uk-slidenav-large"
                href="#"
                data-uk-slidenav-previous
                data-uk-slider-item="previous"
              ></a>
              <a
                class="uk-position-center-right-out uk-slidenav-large"
                href="#"
                data-uk-slidenav-next
                data-uk-slider-item="next"
              ></a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--new arrivals container end-->

    <br /><br /><br /><br /><br />
    <hr class="uk-divider-icon uk-background-default" />

    <!--prodcut container-->
    <div id="services" class="uk-section uk-section-primary- uk-section-large">
      <div class="uk-container">
        <h3 class="uk-text-uppercase uk-h5 uk-letter-spacing-small">
          Our Products
        </h3>
        <h2 class="uk-heading-small uk-margin-medium">Products</h2>
        <div
          class="uk-child-width-1-2 uk-child-width-1-3@s uk-child-width-1-4@m uk-child-width-1-5@l uk-grid-match"
          data-uk-grid
        >
          <div>
            <div
              class="uk-card uk-card-small uk-card-body uk-border-medium uk-flex uk-flex-column"
            >
              <div class="uk-text-center uk-text-secondary uk-padding-medium">
                <img
                  src="./images/laptop/Asus ROG Zephyrus Duo 15 SE GX551QM.png"
                  alt="Icon"
                  data-uk-svg
                />
              </div>

              <h3
                class="uk-margin-remove uk-text-uppercase uk-h5 uk-letter-spacing-small"
              >
                Laptops
              </h3>
            </div>
          </div>
          <div>
            <div
              class="uk-card uk-card-small uk-card-body uk-border-medium uk-flex uk-flex-column"
            >
              <div class="uk-text-center uk-padding-medium">
                <img
                  src="./images/mouse/SteelSeries Rival 3 Wireless Gaming Mouse.png"
                  alt="Icon"
                  data-uk-svg
                />
              </div>

              <h3
                class="uk-margin-remove uk-text-uppercase uk-h5 uk-letter-spacing-small"
              >
                Gaming mouse
              </h3>
            </div>
          </div>
          <div>
            <div
              class="uk-card uk-card-small uk-card-body uk-border-medium uk-flex uk-flex-column"
            >
              <div class="uk-text-center uk-text-secondary uk-padding-medium">
                <img
                  src="./images/keyboard/Steelseries Apex 3 Whisper Quiet Gaming Keyboard.png"
                  alt="Icon"
                  data-uk-svg
                />
              </div>

              <h3
                class="uk-margin-remove uk-text-uppercase uk-h5 uk-letter-spacing-small"
              >
                Gaming Keyboards
              </h3>
            </div>
          </div>
          <div>
            <div
              class="uk-card uk-card-small uk-card-body uk-border-medium uk-flex uk-flex-column"
            >
              <div class="uk-text-center uk-text-secondary uk-padding-medium">
                <img src="./images/msi headphone.jpg" alt="Icon" data-uk-svg />
              </div>
              <h3
                class="uk-margin-remove uk-text-uppercase uk-h5 uk-letter-spacing-small"
              >
                Accessories
              </h3>
            </div>
          </div>
          <div>
            <div
              class="uk-card uk-card-small uk-card-body uk-border-medium uk-flex uk-flex-column"
            >
              <div class="uk-text-center uk-text-secondary uk-padding-medium">
                <img src="./images/gaming chair.jpg" alt="Icon" data-uk-svg />
              </div>
              <h3
                class="uk-margin-remove uk-text-uppercase uk-h5 uk-letter-spacing-small"
              >
                Gaming chairs
              </h3>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!--product container end-->
    <hr class="uk-divider-icon uk-background-default" />
    <!--Product brief start-->

    <!--product brief end-->
    <br /><br /><br />
    <hr class="uk-divider-icon uk-background-default" />

    <!--team start-->
    <div id="team" class="uk-section uk-section-primary uk-section-large">
      <div class="uk-container">
        <h2 class="uk-heading-small">Our Team</h2>

        <div
          class="uk-child-width-1-2 uk-child-width-1-3@s uk-child-width-1-4@m uk-child-width-1-5@l uk-margin-large-top uk-grid-match"
          data-uk-grid
        >
          <div>
            <div class="uk-card uk-card-small uk-border-medium">
              <div class="uk-card-media-top">
                <img src="https://placehold.co/400x400" alt="Tow Sawyer" />
              </div>
              <div class="uk-card-body">
                <h3 class="uk-card-title uk-margin-remove uk-text-center">
                  Ishara Madusanka
                </h3>
              </div>
            </div>
          </div>
          <div>
            <div class="uk-card uk-card-small uk-border-medium">
              <div class="uk-card-media-top">
                <img src="https://placehold.co/400x400" alt="Tow Sawyer" />
              </div>
              <div class="uk-card-body">
                <h3 class="uk-card-title uk-margin-remove uk-text-center">
                  Maleesha Gimmana
                </h3>
              </div>
            </div>
          </div>
          <div>
            <div class="uk-card uk-card-small uk-border-medium">
              <div class="uk-card-media-top">
                <img src="https://placehold.co/400x400" alt="Tow Sawyer" />
              </div>
              <div class="uk-card-body">
                <h3 class="uk-card-title uk-margin-remove uk-text-center">
                  Tharindu Lakshan
                </h3>
              </div>
            </div>
          </div>
          <div>
            <div class="uk-card uk-card-small uk-border-medium">
              <div class="uk-card-media-top">
                <img src="https://placehold.co/400x400" alt="Tow Sawyer" />
              </div>
              <div class="uk-card-body">
                <h3 class="uk-card-title uk-margin-remove uk-text-center">
                  Ishara Tharindu
                </h3>
              </div>
            </div>
          </div>
          <div>
            <div
              class="uk-card uk-card-small uk-card-body uk-border-medium uk-flex uk-flex-column"
            >
              <h3>Join Us</h3>
              <p class="uk-margin-auto-bottom">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ipsum dolor.
              </p>
              <h3
                class="uk-margin-remove uk-text-uppercase uk-h5 uk-letter-spacing-small"
              >
                <a
                  class="hvr-forward"
                  href="#contact"
                  data-uk-scroll="offset: 200"
                  >Contact<span
                    class="uk-margin-left"
                    data-uk-icon="arrow-right"
                  ></span
                ></a>
              </h3>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--team end-->
    <br /><br /><br />
    <hr class="uk-divider-icon uk-background-default" />

    <!--Contact us start-->
    <div id="contact" class="uk-section uk-section-large">
      <div class="uk-container">
        <div class="uk-child-width-1-2@s" data-uk-grid>
          <div>
            <div>
              <h3 class="uk-text-uppercase uk-h5 uk-letter-spacing-small">
                Let's talk
              </h3>
              <h2 class="uk-heading-small uk-margin-medium-top">Contact</h2>
              <p class="uk-width-4-5@l">
                Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                Accusamus cumque ea sunt eligendi, eum excepturi, alias
                deleniti, blanditiis repudiandae veniam ex in? Rerum esse, totam
                ipsam quisquam quibusdam fugiat repellat tempore quis aspernatur
                omnis perferendis odio corporis iusto doloremque, impedit magnam
                deleniti veniam minus suscipit cupiditate similique quas
                corrupti quae.
              </p>
              <div class="uk-margin-medium-top uk-h4 uk-letter-spacing-small">
                <div>
                  <li class="fas fa-phone mr-3"></li>
                  Phone:
                  <a
                    class="uk-link-border uk-link-border-bold"
                    href="tel:+94766859740"
                    id="phone"
                    >+94 766859740</a
                  >
                </div>
                <div class="uk-margin-top">
                  <li class="fas fa-envelope mr-3"></li>
                  Email:
                  <a
                    class="uk-link-border uk-link-border-bold"
                    href="mailto:info@uniel.com"
                    >infonextgen@gmail.com</a
                  >
                </div>
                <div class="uk-margin-top">
                  <li class="fas fa-home mr-3"></li>
                  Location: 223 Malabe Srilanka
                </div>
                <br /><br />
                <div class="column" id="c4">
                  <div class="rows">
                    <span>follow us</span>
                    <div class="social-bar">
                      <a href="https://www.facebook.com/">
                        <i class="fa-brands fa-facebook-square"></i>
                      </a>
                      <a href="https://twitter.com">
                        <i class="fa-brands fa-twitter-square"></i>
                      </a>
                      <a href="https://instagram.com">
                        <i class="fa-brands fa-instagram-square"></i>
                      </a>
                      <a href="https://linkedin.com">
                        <i class="fa-brands fa-linkedin"></i>
                      </a>
                      <a href="#phone">
                        <i class="fa-brands fa-whatsapp-square"></i>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div>
            <div
              class="uk-padding uk-background-secondary uk-light uk-box-shadow-large"
              data-uk-scrollspy="cls: uk-animation-slide-bottom; repeat: true; delay: 100"
            >
              <h3
                class="uk-text-uppercase uk-h5 uk-letter-spacing-small uk-text-center"
              >
                Send us a message
              </h3>
              <form
                action="cusinsert"
                method="post"
                class="uk-grid-small uk-margin-medium-top"
                data-uk-grid
              >
                <div>
                  <input
                    class="uk-input uk-form-large"
                    type="text"
                    placeholder="Full Name"
                    name="name"
                    required
                  />
                </div>
                <div class="uk-width-1-1">
                  <input
                    class="uk-input uk-form-large"
                    type="email"
                    placeholder="Email Address"
                    name="email"
                  />
                </div>
                <div class="uk-width-1-1">
                  <input
                    class="uk-input uk-form-large"
                    type="text"
                    placeholder="Phone Number"
                    name="phone"
                    required
                  />
                </div>
                <div class="uk-width-1-1">
                  <select
                    class="uk-select uk-form-large"
                    id="reason"
                    name="reason"
                    required
                  >
                    <option>Reason for contacting us</option>
                    <option>Services Matter</option>
                    <option>Other</option>
                  </select>
                </div>
                <div class="uk-width-1-1">
                  <textarea
                    class="uk-textarea uk-form-large"
                    rows="5"
                    placeholder="Message"
                    name="message"
                    required
                  ></textarea>
                </div>
                <div class="uk-width-1-1">
                  <button
                    class="uk-button uk-button-large uk-button-primary uk-align-center"
                  >
                    Send Message
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--contact us en-->

    <!--footer start-->
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
    <!--footer end--->

    <!--Bootstrap js-->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
    