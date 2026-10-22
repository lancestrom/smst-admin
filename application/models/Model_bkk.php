<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_bkk extends CI_Model
{
	public function profil_bkk()
	{
		$sql = 'SELECT * FROM `bkk_profil` limit 1';
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
