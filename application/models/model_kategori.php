<?php

class Model_kategori extends CI_Model{
    public function data_Oli()
    {
        return $this->db->get_where("tb_barang",array('kategori' => 'Oli'));
    }

    public function data_Filter_Oli()
    {
        return $this->db->get_where("tb_barang",array('kategori' => 'Filter Oli'));
    }

    public function data_Ban_Luar()
    {
        return $this->db->get_where("tb_barang",array('kategori' => 'Ban Luar'));
    }

    public function data_Kampas_Rem()
    {
        return $this->db->get_where("tb_barang",array('kategori' => 'Kampas Rem'));
    }
}