<div class="row">
	<div class="col-md">
		<div class="card">
			<div class="card-body bg-primary text-white">
				<h4 class="text-center text-uppercase font-weight-bolder">Setting Menu</h4>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-md mt-3 mb-3">
		<div class="card">
			<div class="card-body">
				<button type="button" class="btn btn-primary btn-sm text-uppercase font-weight-bolder" data-toggle="modal" data-target="#tambah_menu">
					Tambah Menu
				</button>
			</div>
		</div>
	</div>
</div>


<div class="row">
	<div class="col-md">
		<div class="card">
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered table-striped" id="dataTable" width="100%" cellspacing="0">
						<thead>
							<tr class="text-center">
								<th scope="col">
									<h6 class="font-weight-bold">#</h6>
								</th>
								<th scope="col">
									<h6 class="font-weight-bold">Nama Menu</h6>
								</th>
								<th scope="col">
									<h6 class="font-weight-bold">Setting Base URL</h6>
								</th>
								<th scope="col">
									<h6 class="font-weight-bold">Integrasi</h6>
								</th>
								<th scope="col">
									<h6 class="font-weight-bold">Aksi</h6>
								</th>
							</tr>
						</thead>
						<tbody class="text-center">
							<tr>
								<?php
								$no = 1;
								foreach ($data_menu as $row) {
								?>
									<td class="text-centers">
										<h6><?php echo $no++; ?></h6>
									</td>
									<td>
										<h6 class=""><?= $row['setting_menu']; ?></h6>
									</td>
									<td>
										<h6 class=""><?= $row['setting_base_url']; ?></h6>
									</td>
									<td>
										<h6 class=""><?= $row['integrasi']; ?></h6>
									</td>
									<td>
										<a href="<?= base_url('Dashboard/' . $row['setting_base_url']) ?>" class="btn btn-primary btn-sm text-uppercase font-weight-bolder">detail</a>
									</td>
							</tr>
						<?php } ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="tambah_menu" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header bg-primary text-white font-weight-bolder text-uppercase">
				<h5 class="modal-title" id="exampleModalLabel">Tambah Menu</h5>
			</div>
			<div class="modal-body text-uppercase font-weight-bolder">
				<form action="<?= base_url('Dashboard/simpan_menu') ?>" method="post">
					<div class="form-group text-uppercase font-weight-bolder">
						<label>Setting Menu</label>
						<input type="text" name="setting_menu" class="form-control">
					</div>
					<div class="form-group text-uppercase font-weight-bolder">
						<label>Setting Base URL</label>
						<input type="text" name="setting_base_url" class="form-control">
					</div>
					<div class="form-group">
						<label>Integrasi</label>
						<select class="form-control text-uppercase font-weight-bolder" name="integrasi">
							<option>DATA Master</option>
							<option>Sekolah</option>
							<option>BKK</option>
							<option>BANK MINI</option>
							<option>LSP</option>
							<option></option>
						</select>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Simpan Menu</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>