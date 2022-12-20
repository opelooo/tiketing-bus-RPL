<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Pelanggan_model extends CI_Model {

	protected $DBGroup = 'tbl_pelanggan';
	protected $allowedFields = ['name', 'email'];

    public function get_pelangan() {
        $query = $this->db->get('tbl_pelanggan');
        return $query->result();
    }

    public function add_pelangan($key) {
        return $this->db->insert('tbl_pelanggan', $key);
    }

    public function update_pelangan($id, $key) {
        $this->db->where('kd_pelanggan', $id);
        return $this->db->update('tbl_pelanggan', $key);
    }

    public function delete_pelangan($id) {
        $this->db->where('kd_pelanggan', $id);
        return $this->db->delete('tbl_pelanggan');
    }
}
