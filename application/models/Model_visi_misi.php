<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_visi_misi extends CI_Model
{
	public function data_visi()
	{
		$sql = "SELECT sekolah_visi.id,sekolah_visi.isi FROM `sekolah_visi`;";
		$query = $this->db->query($sql);
		return $query->result_array();
	}

	public function data_misi()
	{
		$sql = "SELECT sekolah_misi.id,sekolah_misi.isi FROM `sekolah_misi`;";
		$query = $this->db->query($sql);
		return $query->result_array();
	}
}
