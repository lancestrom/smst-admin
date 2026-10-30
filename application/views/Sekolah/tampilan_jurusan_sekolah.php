<style>
	.school-majors__hero {
		border: 0;
		border-radius: .75rem;
		overflow: hidden;
	}

	.school-majors__hero-body {
		padding: 1.75rem 1.5rem;
	}

	.school-majors__card {
		border: 0;
		border-radius: .75rem;
		overflow: hidden;
	}

	.school-majors__card .card-header {
		padding: 1rem 1.25rem;
		background-color: #fff;
		border-bottom: 1px solid #eaecf4;
	}

	.school-majors__card .table {
		margin-bottom: 0;
	}

	.school-majors__card .table th,
	.school-majors__card .table td {
		padding: .9rem 1rem;
		vertical-align: middle;
	}

	.school-majors__number {
		display: inline-flex;
		width: 2rem;
		height: 2rem;
		align-items: center;
		justify-content: center;
		border-radius: 50%;
		background-color: #eaecf4;
		color: #4e73df;
		font-weight: 700;
	}
</style>

<div class="school-majors">
	<div class="card school-majors__hero shadow mb-4">
		<div class="card-body school-majors__hero-body bg-gradient-info text-white">
			<div class="d-flex align-items-center">
				<div class="mr-3" aria-hidden="true">
					<i class="fas fa-graduation-cap fa-2x"></i>
				</div>
				<div>
					<h1 class="h4 text-uppercase font-weight-bold mb-1">Jurusan</h1>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md mb-3">
			<div class="card">
				<div class="card-body">
					<button type="button" class="btn btn-primary btn-sm text-uppercase font-weight-bolder" data-toggle="modal" data-target="#tambah_jurusan">
						Tambah jurusan
					</button>
					<a class="btn btn-danger btn-sm text-uppercase font-weight-bolder" href="<?= base_url() ?>Dashboard/hapus_jurusan">Hapus Data Jurusan</a>
				</div>
			</div>
		</div>
	</div>
	<div class="card school-majors__card shadow-sm">
		<div class="card-header d-flex align-items-center">
			<h2 class="h6 text-uppercase font-weight-bold text-gray-800 mb-0">
				<i class="fas fa-list-ul text-info mr-2" aria-hidden="true"></i>Data Jurusan
			</h2>
		</div>
		<div class="card-body p-0">
			<div class="table-responsive">
				<table class="table table-hover table-bordered" id="dataTable" width="100%" cellspacing="0">
					<thead class="thead-light">
						<tr class="text-center">
							<th scope="col">#</th>
							<th scope="col">ID</th>
							<th scope="col">Kode</th>
							<th scope="col" class="text-left">Nama Jurusan</th>
						</tr>
					</thead>
					<tbody>
						<?php if (!empty($jurusan)) : ?>
							<?php $no = 1; ?>
							<?php foreach ($jurusan as $row) : ?>
								<tr class="text-center">
									<td><span class="school-majors__number"><?= $no++; ?></span></td>
									<td class="text-muted"><?= html_escape($row['id']); ?></td>
									<td><span class="badge badge-info"><?= html_escape($row['kode']); ?></span></td>
									<td class="text-left font-weight-bold text-gray-800 text-capitalize"><?= html_escape($row['nama']); ?></td>
								</tr>
							<?php endforeach; ?>
						<?php else : ?>
							<tr>
								<td colspan="4" class="text-center text-muted py-5">
									<i class="fas fa-folder-open fa-2x d-block mb-2" aria-hidden="true"></i>
									Belum ada data jurusan/Kelas Jenjang Sekolah.
								</td>
							</tr>
						<?php endif; ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="tambah_jurusan" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header bg-primary text-white">
				<h5 class="modal-title text-uppercase" id="exampleModalLabel"> Tambah jurusan</h5>
			</div>
			<div class="modal-body">
				<form action="<?= base_url() ?>Dashboard/simpan_jurusan" method="post">
					<div class="form-group">
						<label class="text-uppercase">ID Jurusan</label>
						<input type="text" class="form-control" name="id">
					</div>
					<div class="form-group">
						<label class="text-uppercase">nama</label>
						<input type="text" class="form-control" name="nama">
					</div>
					<div class="form-group">
						<label class="text-uppercase">kode</label>
						<input type="text" class="form-control" name="kode">
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