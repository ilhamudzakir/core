<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class DC_Controller extends CI_Controller {

    public function __construct() {
        parent::__construct();
        // DEFAULT TIME ZONE
        date_default_timezone_set('Asia/Jakarta');
        // TABLE 
        $this->tbl_prefix = 'dc_';
        $this->tbl_static_content= $this->tbl_prefix . 'static_content';
        $this->tbl_user= $this->tbl_prefix . 'user';
        $this->tbl_menu= $this->tbl_prefix . 'menu';
        $this->tbl_icons= $this->tbl_prefix . 'icons';
        $this->tbl_user_groups= $this->tbl_prefix . 'user_groups';
        $this->tbl_groups= $this->tbl_prefix . 'groups';
        $this->tbl_user_accsess= $this->tbl_prefix . 'menu_accsess';
    }

    function name_method($method){
    	if($method!='index'){
    		echo str_replace('_', ' ', $method);
    	}
    }

    function check_login(){
        if($this->session->userdata('admin') == FALSE){
            redirect('admin/login');
        }
        else{
            return true;
        }
    }

    function get_menu(){
        if($this->session->userdata('admin')){
            $user_groups=$this->session->userdata['admin']['user_group'];
        }else{
            $user_groups=0;
        }
        $this->db->select($this->tbl_menu.'.*');
        $this->db->from($this->tbl_menu);
        $this->db->join($this->tbl_user_accsess,$this->tbl_menu.'.id = '.$this->tbl_user_accsess.'.id_menu');
        $this->db->where($this->tbl_user_accsess.'.id_group',$user_groups);
        $this->db->where($this->tbl_user_accsess.'.accsess',1);
        $this->db->order_by($this->tbl_menu.'.position','ASC');
        $data=$this->db->get();
        return $data->result();
    }

    function check_access(){
        if($this->session->userdata('admin')){
            $user_groups=$this->session->userdata['admin']['user_group'];
        }else{
            $user_groups=0;
        }
        $this->db->select($this->tbl_menu.'.*');
        $this->db->from($this->tbl_menu);
        $this->db->join($this->tbl_user_accsess,$this->tbl_menu.'.id = '.$this->tbl_user_accsess.'.id_menu');
        $this->db->where($this->tbl_user_accsess.'.id_group',$user_groups);
        $this->db->where($this->tbl_user_accsess.'.accsess',0);
        $this->db->order_by($this->tbl_menu.'.position','ASC');
        $data=$this->db->get();
        $data=$data->result();
        foreach ($data as $key) {
            if($key->target==$this->uri->segment(2) or $key->target==$this->uri->segment(1)){
                redirect('admin/404');
            }
        }
    }
}
