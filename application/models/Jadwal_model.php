<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Jadwal_model extends CI_Model {	
	protected $DBGroup = 'tbl_jadwal';
	protected $allowedFields = ['name', 'email'];

    public function get_jadwal() {
        $query = $this->db->get('tbl_jadwal');
        return $query->result();
    }

    public function add_jadwal($key) {
        return $this->db->insert('tbl_jadwal', $key);
    }

    public function update_jadwal($id, $key) {
        $this->db->where('kd_jadwal', $id);
        return $this->db->update('tbl_jadwal', $key);
    }

    public function delete_jadwal($id) {
        $this->db->where('kd_jadwal', $id);
        return $this->db->delete('tbl_jadwal');
    }
	public function delete($ids)
{
    $this->db->where_in('id', $ids);
    $this->db->delete('db_tiket');
    redirect('controller');
}
}
