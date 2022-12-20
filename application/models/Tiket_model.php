<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Tiket_model extends CI_Model {

	protected $DBGroup = 'tbl_tiket';
	protected $allowedFields = ['name', 'email'];

    public function get_tiket() {
        $query = $this->db->get('tbl_tiket');
        return $query->result();
    }

    public function add_tiket($key) {
        return $this->db->insert('tbl_tiket', $key);
    }

    public function update_tiket($id, $key) {
        $this->db->where('kd_tiket', $id);
        return $this->db->update('tbl_tiket', $key);
    }

    public function delete_tiket($id) {
        $this->db->where('kd_tiket', $id);
        return $this->db->delete('tbl_pelanggan');
    }
}
