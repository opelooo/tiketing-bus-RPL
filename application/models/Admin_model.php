<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_model extends CI_Model {	
	protected $DBGroup = 'tbl_admin';
	protected $allowedFields = ['name', 'email'];

    public function get_admin() {
        $query = $this->db->get('tbl_admin');
        return $query->result();
    }

    public function add_admin($key) {
        return $this->db->insert('tbl_admin', $key);
    }

    public function update_admin($id, $key) {
        $this->db->where('kd_admin', $id);
        return $this->db->update('tbl_admin', $key);
    }

    public function delete_admin($id) {
        $this->db->where('kd_admin', $id);
        return $this->db->delete('tbl_admin');
    }
}
