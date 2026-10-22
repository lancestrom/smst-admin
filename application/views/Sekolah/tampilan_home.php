<style>
	.school-home .school-home-banner {
		background: linear-gradient(135deg, #2196f3, #3f51b5);
		border: 0;
		border-radius: 12px;
	}

	.school-home .school-home-banner .card-body {
		padding: 2rem;
	}

	.school-home .school-home-banner h3 {
		margin-bottom: .5rem;
		font-size: 1.5rem;
	}

	.school-home .school-home-banner p {
		margin-bottom: 0;
		opacity: .85;
	}

	.school-home .module-card {
		height: 100%;
		border: 1px solid #e9edf3;
		border-radius: 10px;
		box-shadow: 0 3px 12px rgba(31, 45, 61, .06);
		transition: transform .2s ease, box-shadow .2s ease;
	}

	.school-home .module-card:hover {
		transform: translateY(-4px);
		box-shadow: 0 8px 20px rgba(31, 45, 61, .12);
	}

	.school-home .module-card .card-body {
		display: flex;
		align-items: center;
		padding: 1.25rem;
	}

	.school-home .module-mark {
		display: flex;
		flex: 0 0 48px;
		width: 48px;
		height: 48px;
		align-items: center;
		justify-content: center;
		margin-right: 1rem;
		border-radius: 12px;
		background: rgba(255, 255, 255, .18);
		font-size: .9rem;
		font-weight: 700;
	}

	.school-home .module-card h4 {
		margin: 0;
		font-size: 1rem;
		font-weight: 700;
	}

	.school-home .module-card .card-footer {
		padding: .85rem 1.25rem;
		background: #fff;
		border-top: 1px solid #f0f2f5;
		border-radius: 0 0 10px 10px;
	}

	.school-home .module-card .btn {
		border-radius: 6px;
	}

	@media (max-width: 575.98px) {
		.school-home .school-home-banner .card-body {
			padding: 1.5rem 1rem;
		}

		.school-home .school-home-banner h3 {
			font-size: 1.2rem;
		}
	}
</style>

<div class="school-home">
	<div class="card school-home-banner mb-4 text-white">
		<div class="card-body text-center">
			<h3 class="text-uppercase font-weight-bolder">Sistem Manajemen Sekolah Terintegrasi</h3>
			<p>Selamat datang di pusat pengelolaan layanan sekolah <?= date('Y'); ?></p>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-6 col-lg-4 mb-4">
			<div class="card module-card">
				<div class="card-body bg-primary text-white">
					<span class="module-mark">WS</span>
					<h4 class="text-uppercase">Website Sekolah</h4>
				</div>
				<div class="card-footer text-center">
					<a href="<?= base_url() ?>Dashboard/profil_sekolah" class="btn btn-primary btn-sm text-uppercase font-weight-bolder" aria-disabled="true">Detail Sekolah</a>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-lg-4 mb-4">
			<div class="card module-card">
				<div class="card-body bg-secondary text-white">
					<span class="module-mark">BKK</span>
					<h4 class="text-uppercase">BKK</h4>
				</div>
				<div class="card-footer text-center">
					<a href="<?= base_url() ?>Dashboard/profil_bkk" class="btn btn-primary btn-sm text-uppercase font-weight-bolder" aria-disabled="true">Detail BKK</a>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-lg-4 mb-4">
			<div class="card module-card">
				<div class="card-body bg-danger text-white">
					<span class="module-mark">BM</span>
					<h4 class="text-uppercase">Bank Mini</h4>
				</div>
				<div class="card-footer text-center">
					<a href="" class="btn btn-danger btn-sm btn-sm text-uppercase font-weight-bolder disabled" aria-disabled="true">perbaikan</a>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-lg-4 mb-4">
			<div class="card module-card">
				<div class="card-body bg-info text-white">
					<span class="module-mark">LSP</span>
					<h4 class="text-uppercase">LSP</h4>
				</div>
				<div class="card-footer text-center">
					<a href="" class="btn btn-danger btn-sm btn-sm text-uppercase font-weight-bolder disabled" aria-disabled="true">perbaikan</a>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-lg-4 mb-4">
			<div class="card module-card">
				<div class="card-body bg-secondary text-white">
					<span class="module-mark">SIA</span>
					<h4 class="text-uppercase">SIAKAD</h4>
				</div>
				<div class="card-footer text-center">
					<a href="" class="btn btn-danger btn-sm btn-sm text-uppercase font-weight-bolder disabled" aria-disabled="true">perbaikan</a>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-lg-4 mb-4">
			<div class="card module-card">
				<div class="card-body bg-primary text-white">
					<span class="module-mark">PER</span>
					<h4 class="text-uppercase">inlislite - Perpus</h4>
				</div>
				<div class="card-footer text-center">
					<a href="" class="btn btn-danger btn-sm btn-sm text-uppercase font-weight-bolder disabled" aria-disabled="true">perbaikan</a>
				</div>
			</div>
		</div>
	</div>
</div>