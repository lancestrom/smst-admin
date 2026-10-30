<style>
	.school-profile__hero {
		border: 0;
		border-radius: .75rem;
		overflow: hidden;
	}

	.school-profile__hero-body {
		padding: 2rem 1.5rem;
	}

	.school-profile__card {
		height: 100%;
		border: 0;
		border-radius: .75rem;
		overflow: hidden;
	}

	.school-profile__card .card-header {
		padding: 1rem 1.25rem;
		background-color: #fff;
		border-bottom: 1px solid #eaecf4;
	}

	.school-profile__card .card-body {
		padding: 1.5rem;
	}

	.school-profile__detail {
		display: grid;
		grid-template-columns: minmax(130px, 1fr) minmax(0, 2fr);
		gap: .85rem 1rem;
		margin: 0;
	}

	.school-profile__detail dt {
		margin: 0;
		color: #858796;
		font-size: .8rem;
		font-weight: 700;
		letter-spacing: .04em;
		text-transform: uppercase;
	}

	.school-profile__detail dd {
		margin: 0;
		color: #3a3b45;
		font-weight: 600;
		overflow-wrap: anywhere;
	}

	.school-profile__logo {
		display: flex;
		min-height: 260px;
		align-items: center;
		justify-content: center;
		padding: 1.5rem;
		border-radius: .5rem;
		background-color: #f8f9fc;
	}

	.school-profile__logo img {
		max-width: 100%;
		max-height: 280px;
		object-fit: contain;
	}

	@media (max-width: 575.98px) {
		.school-profile__detail {
			grid-template-columns: 1fr;
			gap: .25rem;
		}

		.school-profile__detail dd {
			margin-bottom: .75rem;
		}
	}
</style>

<div class="school-profile">
	<div class="card school-profile__hero shadow mb-4">
		<div class="card-body school-profile__hero-body bg-gradient-info text-white text-center">
			<i class="fas fa-school fa-2x mb-3" aria-hidden="true"></i>
			<h2 class="h4 text-uppercase font-weight-bold mb-1"><?= $logo_sekolah['nama_sekolah'] ?></h2>
			<p class="mb-0">Profil dan informasi sekolah</p>
		</div>
	</div>
	<div class="row">
		<div class="col-md mt-2 mb-3">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-md-2">
							<button type="button" class="btn btn-primary btn-sm text-uppercase font-weight-bolder" data-toggle="modal" data-target="#tambah_profil_sekolah">
								Tambah Profil Sekolah
							</button>
						</div>
						<div class="col-md-10">
							<form action="<?= base_url() ?>Dashboard/hapus_profil_sekolah" method="post">
								<input type="text" name="id" value="<?= $detail_profil_sekolah['id'] ?>" hidden>
								<button type="submit" class="btn btn-danger btn-sm text-uppercase font-weight-bolder">Hapus profil sekolah</button>
							</form>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-8 mb-4">
			<div class="card school-profile__card shadow-sm border-left-info">
				<div class="card-header">
					<h5 class="text-uppercase font-weight-bold text-gray-800 mb-0">
						<i class="fas fa-info-circle text-info mr-2" aria-hidden="true"></i>Detail Sekolah
					</h5>
				</div>
				<div class="card-body">
					<dl class="school-profile__detail">
						<dt>NPSN</dt>
						<dd><?= $detail_profil_sekolah['npsn'] ?></dd>
						<dt>Nama Sekolah</dt>
						<dd class="text-uppercase"><?= $detail_profil_sekolah['nama_sekolah'] ?></dd>
						<dt>Kepala Sekolah</dt>
						<dd class="text-uppercase"><?= $detail_profil_sekolah['nama_kepala_sekolah'] ?></dd>
						<dt>Telepon</dt>
						<dd><?= $detail_profil_sekolah['telepon'] ?></dd>
						<dt>Email</dt>
						<dd><?= $detail_profil_sekolah['email'] ?></dd>
						<dt>Alamat</dt>
						<dd><?= $detail_profil_sekolah['alamat'] ?></dd>
						<dt>Deskripsi</dt>
						<dd class="text-justify text-capitalize"><?= $detail_profil_sekolah['deskripsi'] ?></dd>
					</dl>
				</div>
			</div>
		</div>

		<div class="col-lg-4 mb-4">
			<div class="card school-profile__card shadow-sm border-left-info">
				<div class="card-header">
					<h5 class="text-uppercase font-weight-bold text-gray-800 mb-0">
						<i class="fas fa-image text-info mr-2" aria-hidden="true"></i>Logo Sekolah
					</h5>
				</div>
				<div class="card-body">
					<div class="school-profile__logo">
						<img src="<?= base_url() ?>assets/image/upload/<?= $logo_sekolah['logo'] ?>" class="img-fluid" alt="Logo Sekolah">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="tambah_profil_sekolah" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-xl">
		<div class="modal-content">
			<div class="modal-header bg-primary text-white">
				<h5 class="modal-title" id="exampleModalLabel">Tambah Profil Sekolah</h5>
			</div>
			<div class="modal-body">
				<form class="text-uppercase font-weight-bolder" action="<?= base_url() ?>Dashboard/simpan_profil_sekolah" method="post">
					<input type="text" class="form-control" name="id" value="<?= $detail_profil_sekolah['id'] ?>" hidden>
					<div class="row">
						<div class="col-md">
							<div class="form-group">
								<label>npsn</label>
								<input type="text" class="form-control" name="npsn">
							</div>
							<div class="form-group">
								<label>nama sekolah</label>
								<input type="text" class="form-control" name="nama_sekolah">
							</div>
							<div class="form-group">
								<label>nama kepala sekolah</label>
								<input type="text" class="form-control" name="nama_kepala_sekolah">
							</div>
							<div class="form-group">
								<label>telpon</label>
								<input type="text" class="form-control" name="telepon">
							</div>
							<div class="form-group">
								<label>email</label>
								<input type="text" class="form-control" name="email">
							</div>
						</div>
						<div class="col-md">
							<div class="form-group">
								<label>alamat</label>
								<input type="text" class="form-control" name="alamat">
							</div>
							<div class="form-group">
								<label>logo</label>
								<input type="text" class="form-control" name="logo">
							</div>
							<div class="form-group">
								<label for="exampleFormControlTextarea1">deskripsi</label>
								<textarea class="form-control" rows="8" name="deskripsi"></textarea>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Simpan Profile Sekolah</button>
					</div>
				</form>
			</div>

		</div>
	</div>
</div>