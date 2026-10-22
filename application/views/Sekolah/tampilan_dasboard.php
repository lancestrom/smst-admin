<!-- Page Wrapper -->
<div id="wrapper">
	<!-- Sidebar -->
	<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
		<!-- Sidebar - Brand -->
		<a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url() ?>Dashboard">
			<div class="sidebar-brand-text mx-3">TH - SMST</div>
		</a>
		<!-- Divider -->
		<hr class="sidebar-divider my-0">
		<!-- Nav Item - Dashboard -->
		<li class="nav-item active">
			<a class="nav-link" href="<?= base_url() ?>Dashboard">
				<i class="fas fa-fw fa-tachometer-alt"></i>
				<span>Dashboard</span></a>
		</li>
		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">
			Profil
		</div>
		<!-- Nav Item - Charts -->
		<li class="nav-item">
			<a class="nav-link" href="<?= base_url() ?>Dashboard/profil_sekolah">
				<i class="fas fa-school"></i>
				<span>Sekolah</span></a>
		</li>
		<!-- Nav Item - Tables -->
		<li class="nav-item">
			<a class="nav-link" href="<?= base_url() ?>Dashboard/profil_bkk">
				<i class="fas fa-school"></i>
				<span>BKK</span></a>
		</li>
		<hr class="sidebar-divider">

		<div class="sidebar-heading">
			Setting
		</div>
		<li class="nav-item">
			<a class="nav-link" href="<?= base_url('Dashboard/menu') ?>">
				<i class="fas fa-cog"></i>
				<span>Menu</span></a>
		</li>
		<!-- Heading -->
		<hr class="sidebar-divider">

		<div class="sidebar-heading">
			Logout
		</div>
		<!-- Nav Item - Charts -->
		<li class="nav-item">
			<a class="nav-link" href="<?= base_url('Dashboard/logout') ?>">
				<i class="fas fa-sign-out-alt"></i>
				<span>Logout</span></a>
		</li>
		<!-- Divider -->
		<hr class="sidebar-divider d-none d-md-block">
		<!-- Sidebar Toggler (Sidebar) -->
		<div class="text-center d-none d-md-inline">
			<button class="rounded-circle border-0" id="sidebarToggle"></button>
		</div>
	</ul>
	<!-- End of Sidebar -->
	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column">
		<!-- Main Content -->
		<div id="content">
			<!-- Topbar -->
			<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
				<!-- Sidebar Toggle (Topbar) -->
				<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
					<i class="fa fa-bars"></i>
				</button>
				<!-- Topbar Navbar -->
				<ul class="navbar-nav ml-auto">
				</ul>
			</nav>
			<!-- End of Topbar -->
			<!-- Begin Page Content -->
			<div class="container-fluid">
				<?php $this->load->view($content) ?>
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- End of Main Content -->
		<!-- Footer -->
		<footer class="sticky-footer bg-white">
			<div class="container my-auto">
				<div class="copyright text-center my-auto">
					<span>Sistem Manajemen Sekolah Terintegrasi - <?= date('Y'); ?></span>
				</div>
			</div>
		</footer>
		<!-- End of Footer -->
	</div>
	<!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->
<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
	<i class="fas fa-angle-up"></i>
</a>