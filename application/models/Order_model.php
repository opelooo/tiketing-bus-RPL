<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Order_model extends CI_Model {

	protected $DBGroup = 'tbl_order';
	protected $allowedFields = ['name', 'email'];

    public function get_order() {
        $query = $this->db->get('tbl_order');
        return $query->result();
    }

    public function add_order($key) {
        return $this->db->insert('tbl_order', $key);
    }

    public function update_order($id, $key) {
        $this->db->where('kd_order', $id);
        return $this->db->update('tbl_order', $key);
    }

    public function delete_order($id) {
        $this->db->where('kd_order', $id);
        return $this->db->delete('tbl_order');
    }
}
