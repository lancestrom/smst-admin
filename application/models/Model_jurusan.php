<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_jurusan extends CI_Model
{
	public function dataJurusan()
	{
		$sql = "SELECT sekolah_jurusan.id,sekolah_jurusan.kode,sekolah_jurusan.nama FROM `sekolah_jurusan`;";
		$query = $this->db->query($sql);
		return $query->result_array();
	}
}
