<style>
	.vision-mission__hero {
		border: 0;
		border-radius: .75rem;
		overflow: hidden;
	}

	.vision-mission__hero-body {
		padding: 2rem 1.5rem;
		background: linear-gradient(135deg, #4e73df 0%, #224abe 100%);
	}

	.vision-mission__section {
		height: 100%;
		border: 0;
		border-radius: .75rem;
		overflow: hidden;
	}

	.vision-mission__section .card-header {
		padding: 1rem 1.25rem;
		background-color: #fff;
		border-bottom: 1px solid #eaecf4;
	}

	.vision-mission__section .card-body {
		padding: 1.25rem;
	}

	.vision-mission__table {
		margin-bottom: 0;
		color: #3a3b45;
	}

	.vision-mission__table thead th {
		padding: .85rem 1rem;
		background-color: #f8f9fc;
		border-bottom: 1px solid #e3e6f0;
		color: #858796;
		font-size: .75rem;
		letter-spacing: .05em;
		vertical-align: middle;
	}

	.vision-mission__table tbody td {
		padding: 1rem;
		vertical-align: top;
	}

	.vision-mission__number {
		width: 3.5rem;
		color: #4e73df;
		font-weight: 700;
		text-align: center;
	}

	.vision-mission__text {
		font-weight: 600;
		line-height: 1.7;
		overflow-wrap: anywhere;
	}

	.vision-mission__empty {
		padding: 1.5rem !important;
		color: #858796;
		text-align: center;
	}

	@media (max-width: 575.98px) {
		.vision-mission__hero-body {
			padding: 1.5rem 1rem;
		}

		.vision-mission__section .card-body {
			padding: .75rem;
		}

		.vision-mission__table tbody td {
			padding: .75rem;
		}
	}
</style>

<div class="vision-mission">
	<div class="card vision-mission__hero shadow mb-4">
		<div class="card-body vision-mission__hero-body text-white text-center">
			<h2 class="h4 text-uppercase font-weight-bold mb-1">Visi dan Misi Sekolah</h2>
		</div>
	</div>

	<div class="row">
		<div class="col-md-5 mb-4">
			<div class="card vision-mission__section shadow-sm border-left-primary">
				<div class="card-header">
					<h5 class="text-uppercase font-weight-bold text-gray-800 mb-0">
						<i class="fas fa-eye text-primary mr-2" aria-hidden="true"></i>Visi Sekolah
					</h5>
				</div>
				<div class="row">
					<div class="col-md mt-3">
						<div class="card">
							<div class="card-body">
								<button type="button" class="btn btn-primary btn-sm text-uppercase font-weight-bolder" data-toggle="modal" data-target="#tambah_visi_sekolah">
									tambah visi sekolah
								</button>
								<a class="btn btn-sm btn-danger text-uppercase font-weight-bolder" href="<?= base_url() ?>Dashboard/hapus_visi_sekolah">Hapus Visi sekolah</a>
							</div>
						</div>
					</div>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-striped vision-mission__table">
							<thead>
								<tr>
									<th scope="col" class="vision-mission__number">#</th>
									<th scope="col">Visi Sekolah</th>
								</tr>
							</thead>
							<tbody>
								<?php
								$no = 1;
								foreach ($visi_sekolah as $row) {
								?>
									<tr>
										<td class="vision-mission__number"><?= $no++; ?></td>
										<td class="vision-mission__text text-capitalize"><?= $row['isi']; ?></td>
									</tr>
								<?php } ?>
								<?php if (empty($visi_sekolah)) { ?>
									<tr>
										<td colspan="2" class="vision-mission__empty">Belum ada data visi sekolah.</td>
									</tr>
								<?php } ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-7 mb-4">
			<div class="card vision-mission__section shadow-sm border-left-info">
				<div class="card-header">
					<h5 class="text-uppercase font-weight-bold text-gray-800 mb-0">
						<i class="fas fa-list-ul text-info mr-2" aria-hidden="true"></i>Misi Sekolah
					</h5>
				</div>
				<div class="row">
					<div class="col-md mt-3">
						<div class="card">
							<div class="card-body">
								<button type="button" class="btn btn-primary btn-sm text-uppercase font-weight-bolder" data-toggle="modal" data-target="#tambah_misi_sekolah">
									tambah misi sekolah
								</button>
								<a class="btn btn-sm btn-danger text-uppercase font-weight-bolder" href="<?= base_url() ?>Dashboard/hapus_misi_sekolah">Hapus Misi sekolah</a>
							</div>
						</div>
					</div>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-striped vision-mission__table table-bordered">
							<thead>
								<tr>
									<th scope="col" class="vision-mission__number">#</th>
									<th scope="col">Misi Sekolah</th>
								</tr>
							</thead>
							<tbody>
								<?php
								$no = 1;
								foreach ($misi_sekolah as $row) {
								?>
									<tr>
										<td class="vision-mission__number"><?= $no++; ?></td>
										<td class="vision-mission__text text-capitalize"><?= $row['isi']; ?></td>
									</tr>
								<?php } ?>
								<?php if (empty($misi_sekolah)) { ?>
									<tr>
										<td colspan="2" class="vision-mission__empty">Belum ada data misi sekolah.</td>
									</tr>
								<?php } ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="tambah_visi_sekolah" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header bg-primary text-white">
				<h5 class="modal-title text-uppercase">tambah visi sekolah</h5>
			</div>
			<div class="modal-body">
				<form action="<?= base_url() ?>Dashboard/simpan_visi_sekolah" method="post">
					<div class="form-group">
						<label>Masukan ID</label>
						<input type="text" class="form-control" name="id">
					</div>
					<div class="form-group">
						<label for="exampleFormControlTextarea1">Masukan Visi</label>
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="isi"></textarea>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save changes</button>
					</div>
				</form>
			</div>

		</div>
	</div>
</div>

<div class="modal fade" id="tambah_misi_sekolah" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header bg-primary text-white">
				<h5 class="modal-title text-uppercase">tambah misi sekolah</h5>
			</div>
			<div class="modal-body">
				<form action="<?= base_url() ?>Dashboard/simpan_misi_sekolah" method="post">
					<div class="form-group">
						<label>Masukan ID</label>
						<input type="text" class="form-control" name="id">
					</div>
					<div class="form-group">
						<label for="exampleFormControlTextarea1">Masukan Visi</label>
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="isi"></textarea>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save changes</button>
					</div>
				</form>
			</div>

		</div>
	</div>
</div>