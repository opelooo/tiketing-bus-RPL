<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Pesanan_model extends CI_Model {

	protected $DBGroup = 'tbl_pelanggan';
	protected $allowedFields = ['name', 'email'];

    public function get_pesanan() {
        $query = $this->db->get('tbl_pesanan');
        return $query->result();
    }

    public function add_pesanan($key) {
        return $this->db->insert('tbl_pesanan', $key);
    }

    public function update_pesanan($id, $key) {
        $this->db->where('kd_pesanan', $id);
        return $this->db->update('tbl_pesanan', $key);
    }

    public function delete_pesanan($id) {
        $this->db->where('kd_pesanan', $id);
        return $this->db->delete('tbl_pesanan');
    }
}
