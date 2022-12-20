<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Tujuan_model extends CI_Model {

	protected $DBGroup = 'tbl_tujuan';
	protected $allowedFields = ['name', 'email'];

    public function get_tujuan() {
        $query = $this->db->get('tbl_tujuan');
        return $query->result();
    }

    public function add_tujuan($key) {
        return $this->db->insert('tbl_tujuan', $key);
    }

    public function update_tujuan($id, $key) {
        $this->db->where('kd_tujuan', $id);
        return $this->db->update('tbl_tujuan', $key);
    }

    public function delete_tujuan($id) {
        $this->db->where('kd_tujuan', $id);
        return $this->db->delete('tbl_tujuan');
    }
}
