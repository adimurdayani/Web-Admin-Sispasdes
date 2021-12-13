<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Datapenduduk extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('m_data');
    
    if (!$this->session->userdata('username')) {
      redirect('login');
    }
  }

  public function index()
  {
    $data['judul'] = 'Data Penduduk';
    $data['users_ses'] = $this->db->get_where('tb_user', ['username' => $this->session->userdata('username')])->row_array();
    $data['get_datapenduduk'] = $this->m_data->get_all_penduduk();
    $data['total_penyewa'] = $this->db->get('tb_penyewa')->num_rows();
    $data['total_kritik'] = $this->db->get('tb_kritik')->num_rows();
    $data['get_rt'] = $this->db->get('tb_rt')->result_array();
    $data['get_namakk'] = $this->db->get('tb_namakk')->result_array();
    $data['get_dusun'] = $this->db->get('tb_dusun')->result_array();
    $this->form_validation->set_rules('tgl_lahir', 'tanggal lahir', 'trim|required');
    $this->form_validation->set_rules('ket', 'keterangan', 'trim|required');
    
    if ($this->form_validation->run() == FALSE) {
      # code...
      $this->load->view('backend/layout/header', $data, FALSE);
      $this->load->view('backend/layout/topbar', $data, FALSE);
      $this->load->view('backend/layout/sidebar', $data, FALSE);
      $this->load->view('backend/datapenduduk/index', $data, FALSE);
      $this->load->view('backend/layout/footer', $data, FALSE);
    } else {
      # code...
      $data = [
        'kk_id' => $this->input->post('kk_id'),
        'nama_art' => $this->input->post('nama_art'),
        'tgl_lahir' => $this->input->post('tgl_lahir'),
        'dusun_id' => $this->input->post('dusun_id'),
        'rt_id' => $this->input->post('rt_id'),
        'kelamin' => $this->input->post('kelamin'),
        'ket' => $this->input->post('ket'),
        'created_at' => date('d M Y')        
      ];
      $this->db->insert('tb_penduduk', $data);
      $this->session->set_flashdata(
              'message', 
              '<div class="alert alert-success alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                Data berhasil disimpan!
              </div>'
            );
      redirect('backend/datapenduduk');
    }
    
  }

  public function edit()
  {
    $data['judul'] = 'Data Penduduk';
    $data['users_ses'] = $this->db->get_where('tb_user', ['username' => $this->session->userdata('username')])->row_array();
    $data['get_datapenduduk'] = $this->m_data->get_all_penduduk();
    $data['total_penyewa'] = $this->db->get('tb_penyewa')->num_rows();
    $data['total_kritik'] = $this->db->get('tb_kritik')->num_rows();
    $data['get_rt'] = $this->db->get('tb_rt')->result_array();
    $data['get_dusun'] = $this->db->get('tb_dusun')->result_array();
    
    $this->form_validation->set_rules('ket', 'keterangan', 'trim|required');
    
    if ($this->form_validation->run() == FALSE) {
      # code...
      $this->load->view('backend/layout/header', $data, FALSE);
      $this->load->view('backend/layout/topbar', $data, FALSE);
      $this->load->view('backend/layout/sidebar', $data, FALSE);
      $this->load->view('backend/datapenduduk/index', $data, FALSE);
      $this->load->view('backend/layout/footer', $data, FALSE);
    } else {
      # code...
      $id_pend = $this->input->post('id_pend');
      
      $data = [
        'kk_id' => $this->input->post('kk_id'),
        'nama_art' => $this->input->post('nama_art'),
        'tgl_lahir' => $this->input->post('tgl_lahir'),
        'dusun_id' => $this->input->post('dusun_id'),
        'rt_id' => $this->input->post('rt_id'),
        'kelamin' => $this->input->post('kelamin'),
        'ket' => $this->input->post('ket'),
        'created_at' => date('d M Y')        
      ];

      $this->db->where('id_pend', $id_pend);
      
      $this->db->update('tb_penduduk', $data);
      $this->session->set_flashdata(
              'message', 
              '<div class="alert alert-warning alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                Data berhasil terupdate!
              </div>'
            );
      redirect('backend/datapenduduk');
    }
    
  }

  public function hapus($id_pend)
  {
    $this->db->delete('tb_penduduk', ['id_pend' => $id_pend]);
      $this->session->set_flashdata(
              'message', 
              '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
                Data berhasil terhapus!
              </div>'
            );
      redirect('backend/datapenduduk');
  }

  public function get_id_rt()
  {
    $id_dusun = $this->input->post('id', true);
    
    $get_rt = $this->m_data->get_id_rt($id_dusun)->result();
    echo json_encode($get_rt);
  }

}

/* End of file Profile.php */