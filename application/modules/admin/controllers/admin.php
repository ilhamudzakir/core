<?php

if (!defined('BASEPATH'))
	exit('No direct script access allowed');


class admin extends DC_controller {

	function __construct() {
		parent::__construct();
		if($this->router->fetch_method()=='index'){
			$method='';
		}else{
			$method=str_replace('_',' ',$this->router->fetch_method());
		}
		$this->controller_attr = array('controller' => 'admin','controller_name' => 'Admin','method'=>ucwords($method),'menu'=>$this->get_menu());
	}
	
	public function index(){
		$data = $this->controller_attr;
		if($this->session->userdata('admin') != FALSE){
			redirect('admin/dashboard');
		}
		else{
			redirect('admin/login');
		}
	}
	


	 	function login(){
		$data = $this->controller_attr;
		$data['function']='login';
		$this->load->view('admin/index',$data);
	}

		function do_login()
	{
		$data = $this->controller_attr;
		$data['function']='do_login';
		if($this->session->userdata('admin') == FALSE){
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			$admin_user =select_where($this->tbl_user,'username',$username)->row();
			if($admin_user){
				if($admin_user->password == md5($password)){
					$data_user = array(
						'id' => $admin_user->id,
						'username' => $admin_user->username,
						'email' => $admin_user->email,
						'password' => $admin_user->password,
						'first_name' => $admin_user->first_name,
						'last_name' => $admin_user->last_name,
						'photo' => $admin_user->photo,
						'user_group' => $admin_user->user_group,
						);
					$this->session->set_userdata('admin',$data_user);
					$this->session->set_userdata('admin',$data_user);
					redirect('admin/dashboard');
				}
				else{
					$this->session->set_flashdata('notif','error');
					$this->session->set_flashdata('msg','Your password is wrong');
					redirect('admin/login');
				}
			}
			else{
					$this->session->set_flashdata('notif','info');
					$this->session->set_flashdata('msg','Username not registered');
					redirect('admin/login');
			}
		}else{
			redirect('admin/dashboard');
		}
	}
	function logout(){
		$data = $this->controller_attr;
		$data += array('function' => 'logout','function_name' => 'Logout');
		if($this->session->userdata('admin') != FALSE){
			$this->session->unset_userdata('admin');
			redirect('admin/login');
		}
		else
			redirect('admin');
	}

	 function dashboard(){
	 	if($this->session->userdata('admin') == FALSE){
			redirect('admin/login');
		}
		$data = $this->controller_attr;
		$data['page'] = $this->load->view('admin/dashboard',$data,true);
		$this->load->view('layout_backend',$data);
	}

}

