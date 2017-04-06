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
        $data=select_all_order($this->tbl_menu,'position','asc');
        return $data;
    }
}
