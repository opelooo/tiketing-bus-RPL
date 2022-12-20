<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bank_model extends CI_Model {	
	protected $DBGroup = 'tbl_bank';
	protected $allowedFields = ['name', 'email'];

    public function get_bank() {
        $query = $this->db->get('tbl_bank');
        return $query->result();
    }

    public function add_bank($key) {
        return $this->db->insert('tbl_bank', $key);
    }

    public function update_bank($id, $key) {
        $this->db->where('kd_bank', $id);
        return $this->db->update('tbl_bank', $key);
    }

    public function delete_bank($id) {
        $this->db->where('kd_bank', $id);
        return $this->db->delete('tbl_bank');
    }
}
