<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Konfirmasi_model extends CI_Model {	
	protected $DBGroup = 'tbl_konfirmasi';
	protected $allowedFields = ['name', 'email'];

    public function get_konfirmasi() {
        $query = $this->db->get('tbl_konfirmasi');
        return $query->result();
    }

    public function add_konfirmasi($key) {
        return $this->db->insert('tbl_konfirmasi', $key);
    }

    public function update_konfirmasi($id, $key) {
        $this->db->where('kd_konfirmasi', $id);
        return $this->db->update('tbl_konfirmasi', $key);
    }

    public function delete_konfirmasi($id) {
        $this->db->where('kd_konfirmasi', $id);
        return $this->db->delete('tbl_konfirmasi');
    }
}
