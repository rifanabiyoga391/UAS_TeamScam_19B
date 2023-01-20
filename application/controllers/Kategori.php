<?php

class Kategori extends CI_Controller{
    public function Oli()
    {
        $data['Oli'] = $this->model_kategori->data_oli()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('Oli', $data);
        $this->load->view('templates/footer');
    }

    public function Filter_Oli()
    {
    $data['Filter_Oli'] = $this->model_kategori->data_Filter_oli()->result();
    $this->load->view('templates/header');
    $this->load->view('templates/sidebar');
    $this->load->view('Filter_Oli', $data);
    $this->load->view('templates/footer');
    }   

    public function Ban_Luar()
    {
        $data['Ban_Luar'] = $this->model_kategori->data_Ban_Luar()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('Ban_Luar', $data);
        $this->load->view('templates/footer');
    }

    public function Kampas_Rem()
    {
        $data['Kampas_Rem'] = $this->model_kategori->data_Kampas_Rem()->result();
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('Kampas_Rem', $data);
        $this->load->view('templates/footer');
    }    
}