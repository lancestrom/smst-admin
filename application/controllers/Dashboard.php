<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{


	public function index()
	{
		$this->Model_keamanan->getKeamanan();
		$header['logo_sekolah'] = $this->Model_sekolah->profil_sekolah();
		$isi['content'] = 'Sekolah/tampilan_home';
		$this->load->view('templates/header', $header);
		$this->load->view('Sekolah/tampilan_dasboard', $isi);
		$this->load->view('templates/footer');
	}

	public function menu()
	{
		$isi['data_menu'] = $this->Model_menu->dataMenu();

		$this->Model_keamanan->getKeamanan();
		$header['logo_sekolah'] = $this->Model_sekolah->profil_sekolah();
		$isi['content'] = 'Sekolah/tampilan_menu';
		$this->load->view('templates/header', $header);
		$this->load->view('Sekolah/tampilan_dasboard', $isi);
		$this->load->view('templates/footer');
	}

	public function simpan_menu()
	{
		$setting_menu = $this->input->post('setting_menu');
		$setting_base_url = $this->input->post('setting_base_url');
		$integrasi = $this->input->post('integrasi');

		$data = array(
			'setting_menu' => $setting_menu,
			'setting_base_url' => $setting_base_url,
			'integrasi' => $integrasi
		);

		$this->db->insert('menu', $data);
		redirect('dashboard/menu');
	}

	public function profil_sekolah()
	{
		$isi['detail_profil_sekolah'] = $this->Model_sekolah->detail_profil_sekolah();

		$isi['logo_sekolah'] = $this->Model_sekolah->profil_sekolah();
		$this->Model_keamanan->getKeamanan();
		$header['logo_sekolah'] = $this->Model_sekolah->profil_sekolah();
		$isi['content'] = 'Sekolah/tampilan_profil_sekolah';
		$this->load->view('templates/header', $header);
		$this->load->view('Sekolah/tampilan_dasboard', $isi);
		$this->load->view('templates/footer');
	}

	public function profil_bkk()
	{
		$isi['profil_bkk'] = $this->Model_bkk->profil_bkk();

		$this->Model_keamanan->getKeamanan();
		$header['logo_sekolah'] = $this->Model_sekolah->profil_sekolah();
		$isi['content'] = 'Sekolah/tampilan_profil_bkk';
		$this->load->view('templates/header', $header);
		$this->load->view('Sekolah/tampilan_dasboard', $isi);
		$this->load->view('templates/footer');
	}


	public function detail_profil_sekolah()
	{
		$isi['detail_profil_sekolah'] = $this->Model_sekolah->detailprofil_sekolah();

		$isi['logo_sekolah'] = $this->Model_sekolah->profil_sekolah();
		$this->Model_keamanan->getKeamanan();
		$header['logo_sekolah'] = $this->Model_sekolah->profil_sekolah();
		$isi['content'] = 'Sekolah/tampilan_detail_profil_sekolah';
		$this->load->view('templates/header', $header);
		$this->load->view('Sekolah/tampilan_dasboard', $isi);
		$this->load->view('templates/footer');
	}

	public function hapus_profil_sekolah()
	{

		$data = array(
			'id' => $this->input->post('id'),
			'nama_sekolah' => '0',
			'npsn' => '0',
			'alamat' => '0',
			'telepon' => '0',
			'email' => '0',
			'nama_kepala_sekolah' => '0',
			'deskripsi' => '0',
			'logo' => 'webdev.png',
		);

		$this->db->where('id', $this->input->post('id'));
		$this->db->update('sekolah_profil', $data);
		redirect('Dashboard/detail_profil_sekolah/' . $this->input->post('id'));
	}

	public function simpan_profil_sekolah()
	{
		$id = $this->input->post('id');
		$nama_sekolah = $this->input->post('nama_sekolah');
		$npsn = $this->input->post('npsn');
		$alamat = $this->input->post('alamat');
		$telpon = $this->input->post('telepon');
		$email = $this->input->post('email');
		$nama_kepala_sekolah = $this->input->post('nama_kepala_sekolah');
		$logo = $this->input->post('logo');
		$deskripsi = $this->input->post('deskripsi');
		$data = array(
			'id' => $id,
			'nama_sekolah' => $nama_sekolah,
			'npsn' => $npsn,
			'alamat' => $alamat,
			'telepon' => $telpon,
			'email' => $email,
			'nama_kepala_sekolah ' => $nama_kepala_sekolah,
			'logo' => $logo,
			'deskripsi' => $deskripsi,
		);

		$this->db->where('id', $id);
		$this->db->update('sekolah_profil', $data);
		redirect('Dashboard/detail_profil_sekolah/' . $id);
	}

	public function visi_misi_sekolah()
	{
		$isi['visi_sekolah'] = $this->Model_visi_misi->data_visi();
		$isi['misi_sekolah'] = $this->Model_visi_misi->data_misi();

		$isi['logo_sekolah'] = $this->Model_sekolah->profil_sekolah();
		$this->Model_keamanan->getKeamanan();
		$header['logo_sekolah'] = $this->Model_sekolah->profil_sekolah();
		$isi['content'] = 'Sekolah/tampilan_detail_visi_misi_sekolah';
		$this->load->view('templates/header', $header);
		$this->load->view('Sekolah/tampilan_dasboard', $isi);
		$this->load->view('templates/footer');
	}

	public function hapus_visi_sekolah()
	{
		$this->db->empty_table('sekolah_visi');
		redirect('Dashboard/visi_misi_sekolah');
	}

	public function simpan_visi_sekolah()
	{
		$id = $this->input->post('id');
		$isi = $this->input->post('isi');

		$data = array(
			'id' => $id,
			'isi' => $isi,
		);

		$this->db->insert('sekolah_visi', $data);

		redirect('Dashboard/visi_misi_sekolah');
	}

	public function hapus_misi_sekolah()
	{
		$this->db->empty_table('sekolah_misi');
		redirect('Dashboard/visi_misi_sekolah');
	}

	public function simpan_misi_sekolah()
	{
		$id = $this->input->post('id');
		$isi = $this->input->post('isi');

		$data = array(
			'id' => $id,
			'isi' => $isi,
		);

		$this->db->insert('sekolah_misi', $data);

		redirect('Dashboard/visi_misi_sekolah');
	}

	public function jurusan()
	{
		$isi['jurusan'] = $this->Model_jurusan->dataJurusan();

		$isi['logo_sekolah'] = $this->Model_sekolah->profil_sekolah();
		$this->Model_keamanan->getKeamanan();
		$header['logo_sekolah'] = $this->Model_sekolah->profil_sekolah();
		$isi['content'] = 'Sekolah/tampilan_jurusan_sekolah';
		$this->load->view('templates/header', $header);
		$this->load->view('Sekolah/tampilan_dasboard', $isi);
		$this->load->view('templates/footer');
	}

	public function hapus_jurusan()
	{
		$this->db->empty_table('sekolah_jurusan');
		redirect('Dashboard/jurusan');
	}


	public function logout()
	{
		$this->session->sess_destroy();
		redirect('/');
	}
}
