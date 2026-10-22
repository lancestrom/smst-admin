<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_menu extends CI_Model
{
	public function dataMenu()
	{
		$sql = "SELECT * FROM `menu`";
		$query = $this->db->query($sql);
		return $query->result_array();
	}
}
