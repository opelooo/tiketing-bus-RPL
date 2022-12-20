<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Bus_model extends CI_Model {	
	protected $DBGroup = 'tbl_bus';
	protected $allowedFields = ['name', 'email'];

    public function get_bus() {
        $query = $this->db->get('tbl_bus');
        return $query->result();
    }

    public function add_bus($key) {
        return $this->db->insert('tbl_bus', $key);
    }

    public function update_bus($id, $key) {
        $this->db->where('kd_bus', $id);
        return $this->db->update('tbl_bus', $key);
    }

    public function delete_bus($id) {
        $this->db->where('kd_bus', $id);
        return $this->db->delete('tbl_bus');
    }
}
