<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_sekolah extends CI_Model
{
	public function profil_sekolah()
	{
		$sql = 'SELECT sekolah_profil.logo,sekolah_profil.nama_sekolah FROM `sekolah_profil`;';
		$query = $this->db->query($sql);
		return $query->row_array();
	}

	public function detail_profil_sekolah()
	{
		$sql = "SELECT sekolah_profil.npsn,sekolah_profil.nama_sekolah,sekolah_profil.nama_kepala_sekolah, sekolah_profil.telepon,sekolah_profil.email,sekolah_profil.alamat FROM `sekolah_profil`;";
		$query = $this->db->query($sql);
		return $query->row_array();
	}

	public function detailprofil_sekolah()
	{
		$sql = "SELECT * FROM `sekolah_profil`";
		$query = $this->db->query($sql);
		return $query->row_array();
	}



	public function dataJurusan()
	{
		$sql = "SELECT * FROM `a_jurusan`";
		$query = $this->db->query($sql);
		return $query->result_array();
	}
}
