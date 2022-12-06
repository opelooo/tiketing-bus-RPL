<!DOCTYPE html>
<html lang="zxx" class="no-js">
	<head>
		<?php $this->load->view('frontend/include/header'); ?>
		<!--CSS
		============================================= -->
		<?php $this->load->view('frontend/include/base_css'); ?>
	</head>
	<body class="">
		<!-- navbar -->
		<?php $this->load->view('frontend/include/base_nav'); ?>
		<section class="generic-banner">
			<div class="container">
				<div class="row height align-items-center justify-content-center">
					<div class="col-lg-5">
						<div class="card card-login mx-auto mt-10">
							<div class="card-header">Login</div>
							<div class="card-body" align="left">
								<?php echo $this->session->flashdata('pesan'); ?>
								<form action="<?php echo base_url() ?>login/cekuser" method="post">
									<div class="form-group">
										<div class="form-label-group">
											<input type="text" id="username" name="username" class="form-control" placeholder="Username/Email" required="required" autofocus="autofocus">
										</div>
									</div>
									<div class="form-group">
										<div class="form-label-group">
											<input type="password" name="password" class="form-control" placeholder="Password" required="required">
										</div>
									</div>
									<div class="form-group">
										<div class="checkbox">
											<label>
												<input type="checkbox" value="remember-me">
												Remember Password
											</label>
										</div>
									</div>
									<button class="btn btn-primary btn-block">Masuk</button>
								</form>
								<div class="text-center">
									<p><a class="d-block small mt-3" href="<?php echo base_url() ?>login/daftar">Daftar</a>									<a class="d-block small" href="<?php echo base_url() ?>login/lupapassword">Lupa Password</a>
</p>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- start footer Area -->
		<?php $this->load->view('frontend/include/base_footer'); ?>
		<!-- js -->
		<?php $this->load->view('frontend/include/base_js'); ?>
	</body>
</html>
