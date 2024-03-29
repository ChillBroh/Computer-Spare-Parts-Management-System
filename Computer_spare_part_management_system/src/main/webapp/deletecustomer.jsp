<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>User Profile</title>

 <!--add title bar icon-->
    <link rel="icon" href="images/white.ico" type="image/x-icon" />

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<!--Icons-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="./CSS/footer.css" />
</head>
<body>
	<section style="background-color: #eee">
		<div class="container py-5">
			<div class="row">
				<div class="col">
					<nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
						<ol class="breadcrumb mb-0">
							<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">User
								Profile</li>
						</ol>
					</nav>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-4">
					<div class="card mb-4">
						<div class="card-body text-center">
							<img
								src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp"
								alt="avatar" class="rounded-circle img-fluid"
								style="width: 150px" />







							<h5 class="my-3">John Smith</h5>
							<p class="text-muted mb-1">Full Stack Developer</p>
							<p class="text-muted mb-4">Bay Area, San Francisco, CA</p>
							<div class="d-flex justify-content-center mb-2"></div>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="card mb-4">
						<div class="card-body">

							<form action="deletedetails" method="post">
								<%
								String id = request.getParameter("id");
								String fname = request.getParameter("fname");
								String lname = request.getParameter("lname");
								String uname = request.getParameter("username");
								String email = request.getParameter("email");
								String phone = request.getParameter("phone");
								String type = request.getParameter("type");
								%>

								<div class="row">
									<div class="row g-3">
										<div class="col-sm-3">
											<label for="fname">Full Name</label>
										</div>
										<div class="col">
										<input type="hidden" name="id" value="<%=id %>">
											<input type="text" class="form-control" value="<%=fname%>"
												name="fname" readonly/>
												
										</div>
										<div class="col">
											<input type="text" class="form-control" value="<%=lname%>"
												name="lname" readonly/>
										</div>
									</div>
								</div>
								<hr />
								<div class="row">
									<div class="row g-3">
										<div class="col-sm-3">
											<label for="fname">Email</label>
										</div>
										<div class="col">
											<input type="email" class="form-control" value="<%=email%>"
												name="email" readonly/>
										</div>
									</div>
								</div>
								<hr />
								<div class="row">
									<div class="row g-3">
										<div class="col-sm-3">
											<label for="uname">Username</label>
										</div>
										<div class="col">
											<input type="text" class="form-control" value="<%=uname%>"
												name="uname" readonly/>
										</div>
									</div>
								</div>
								<hr />
								<div class="row">
									<div class="row g-3">
										<div class="col-sm-3">
											<label for="phone">Phone</label>
										</div>
										<div class="col">
											<input type="text" class="form-control" name="phone" readonly
												value="<%=phone%>" />
										</div>

									</div>
								</div>
								<hr />
								<div class="row">
									<div class="row g-3">
										<div class="col-sm-3">
											<label for="type">type</label>
										</div>
										<div class="col">
											<input type="text" class="form-control" name="type" readonly
												value="<%=type%>" />
										</div>

									</div>
								</div>
						</div>
						<button type="submit" class="btn btn-primary">Delete
							Account</button>
						</form>


					</div>
				</div>
			</div>
		</div>
		</div>
	</section>

	<!--footer start-->
	<footer class="bg-dark text-white pt-5 pb-4">
		<div class="container text-center text-md-left">
			<div class="row text-center text-md-left">
				<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
					<hr class="mb-4" />
					<p class="text-light slogan font-monospace">
						Finally, a worthy partner who provides best and powerful Computer
						parts in Sri Lanka for you.<br />Since 2006
					</p>
				</div>

				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
					<h3
						class="text-uppercase mb-4 font-weight-bold text-info font-monospace">
						About Us</h3>
					<hr class="mb-4" />
					<p class="text-uppercase">
						<a href="#" class="text-light footer-topic fs-5">Our Story</a> <br />
						<br /> <a href="#" class="text-light footer-topic fs-5">Team</a>
						<br />
						<br /> <a href="#" class="text-light footer-topic fs-5">Career</a>
						<br />
					</p>
				</div>

				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
					<h3
						class="text-uppercase mb-4 font-weight-bold text-info font-monospace">
						Useful Links</h3>
					<hr class="mb-4" />
					<p class="text-uppercase">
						<a href="#" class="text-light footer-topic fs-5">Cookies
							policy</a> <br />
						<br /> <a href="#" class="text-light footer-topic fs-5">Terms
							of services</a> <br />
						<br /> <a href="#" class="text-light footer-topic fs-5">Privacy
							policy</a> <br />
					</p>
				</div>
				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
					<h3
						class="text-uppercase mb-4 font-weight-bold text-info font-monospace">
						News Letter</h3>
					<hr class="mb-4" />

					<div class="mail-wrapper">
						<form action="#">
							<input type="text" placeholder="yourmail@gmail.com" /> <br />
							<br />

							<button type="submit" name="newsletter"
								class="btn btn-outline-success">
								Subscribe</button>
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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>
