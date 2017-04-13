<?php

if (!defined('BASEPATH'))
	exit('No direct script access allowed');


class setting_system extends DC_controller {

	function __construct() {
		parent::__construct();
		$this->check_login();
		if($this->router->fetch_method()=='index'){
			$method='';
		}else{
			$method=str_replace('_',' ',$this->router->fetch_method());
		}
		$this->controller_attr = array('controller' => 'setting_system','controller_name' => 'Settings System','method'=>ucwords($method),'menu'=>$this->get_menu());
	}
	
	 function index(){
		redirect('setting_system/menu');
	}
	
	function menu(){
		$this->check_access();
		$data = $this->controller_attr;
		$data['function']='menu';
		$list=select_all($this->tbl_menu);
			foreach ($list as $key) {
				if($key->sub_menu!=0){
				$submenu=select_where($this->tbl_menu,'id',$key->sub_menu)->row();
				$key->sub_menu=$submenu->name_menu;
				}else{
					$key->sub_menu='none';
				}
			}
		$data['list']=$list;
		$data['page'] = $this->load->view('setting_system/list_menu',$data,true);
		$this->load->view('layout_backend',$data);
	}

	function menu_form($id=null){
		$data = $this->controller_attr;
		$data['function']='menu';
		if ($id) {
            $data['data'] = select_where($this->tbl_menu, 'id', $id)->row();
        }
        else{
            $data['data'] = null;
        }
        $data['submenu']=select_where($this->tbl_menu,'sub_menu',0)->result();
        $data['icon']= select_all($this->tbl_icons);
		$data['page'] = $this->load->view('setting_system/menu_form',$data,true);
		$this->load->view('layout_backend',$data);
	}

	function menu_update(){
		$data = $this->controller_attr;
		$data['function']='menu';
		$id=$this->input->post('id');
		$table_field = $this->db->list_fields($this->tbl_menu);
		$update = array();
        foreach ($table_field as $field) {
            $update[$field] = $this->input->post($field);
        }
        $update['date_modified']= date("Y-m-d H:i:s");
        $update['id_modifier']=$this->session->userdata['admin']['id'];
        $query=update($this->tbl_menu,$update,'id',$id);
		if($query){
			$this->session->set_flashdata('notif','success');
			$this->session->set_flashdata('msg','Your data have been updated');
		}else{
			$this->session->set_flashdata('notif','error');
			$this->session->set_flashdata('msg','Your data not updated');
		}
		redirect($data['controller']."/".$data['function']);
	}

	function menu_add(){
		$data = $this->controller_attr;
		$data['function']='menu';
		$table_field = $this->db->list_fields($this->tbl_menu);
		$insert = array();
        foreach ($table_field as $field) {
            $insert[$field] = $this->input->post($field);
        }
        $insert['date_created']= date("Y-m-d H:i:s");
        $insert['id_creator']=$this->session->userdata['admin']['id'];
        $query=insert_all($this->tbl_menu,$insert);
		if($query){
			$this->session->set_flashdata('notif','success');
			$this->session->set_flashdata('msg','Your data have been added');
		}else{
			$this->session->set_flashdata('notif','error');
			$this->session->set_flashdata('msg','Your data not added');
		}
		redirect($data['controller']."/".$data['function']);
	}

	function menu_delete($id){
		$data = $this->controller_attr;
		$function='menu';
		$query=delete($this->tbl_menu,'id',$id);
		if($query){
			$this->session->set_flashdata('notif','success');
			$this->session->set_flashdata('msg','Your data have been deleted');
		}else{
			$this->session->set_flashdata('notif','error');
			$this->session->set_flashdata('msg','Your data not deleted');
		}
	}

	function user_groups(){
		$this->check_access();
		$data = $this->controller_attr;
		$data['function']='user_groups';
		$data['list']=select_all($this->tbl_groups);
		$data['page'] = $this->load->view('setting_system/list_'.$data['function'],$data,true);
		$this->load->view('layout_backend',$data);
	}

	function user_groups_form($id=null){
		$data = $this->controller_attr;
		$data['function']='user_groups';
		if ($id) {
            $data['data'] = select_where($this->tbl_groups, 'id', $id)->row();
        }
        else{
            $data['data'] = null;
        }
		$data['page'] = $this->load->view('setting_system/'.$data['function'].'_form',$data,true);
		$this->load->view('layout_backend',$data);
	}

	function user_groups_update(){
		$data = $this->controller_attr;
		$data['function']='user_groups';
		$id=$this->input->post('id');
		$table_field = $this->db->list_fields($this->tbl_groups);
		$update = array();
        foreach ($table_field as $field) {
            $update[$field] = $this->input->post($field);
        }
        $update['date_modified']= date("Y-m-d H:i:s");
        $update['id_modifier']=$this->session->userdata['admin']['id'];
        $query=update($this->tbl_groups,$update,'id',$id);
		if($query){
			$this->session->set_flashdata('notif','success');
			$this->session->set_flashdata('msg','Your data have been updated');
		}else{
			$this->session->set_flashdata('notif','error');
			$this->session->set_flashdata('msg','Your data not updated');
		}
		redirect($data['controller']."/".$data['function']);
	}

	function user_groups_add(){
		$data = $this->controller_attr;
		$data['function']='user_groups';
		$table_field = $this->db->list_fields($this->tbl_groups);
		$insert = array();
        foreach ($table_field as $field) {
            $insert[$field] = $this->input->post($field);
        }
        $insert['date_created']= date("Y-m-d H:i:s");
        $insert['id_creator']=$this->session->userdata['admin']['id'];
        $query=insert_all($this->tbl_groups,$insert);
		if($query){
			$this->session->set_flashdata('notif','success');
			$this->session->set_flashdata('msg','Your data have been added');
		}else{
			$this->session->set_flashdata('notif','error');
			$this->session->set_flashdata('msg','Your data not added');
		}
		redirect($data['controller']."/".$data['function']);
	}

	function user_groups_delete($id){
		$data = $this->controller_attr;
		$function='user_groups';
		$query=delete($this->tbl_groups,'id',$id);
		if($query){
			$this->session->set_flashdata('notif','success');
			$this->session->set_flashdata('msg','Your data have been deleted');
		}else{
			$this->session->set_flashdata('notif','error');
			$this->session->set_flashdata('msg','Your data not deleted');
		}
	}

	function user_accsess(){
		$this->check_access();
		$data = $this->controller_attr;
		$data['function']='user_accsess';
		$data['list']=select_all($this->tbl_user_accsess);
		$data['group']=select_all($this->tbl_groups);
		$data['menu_akses']=select_all($this->tbl_menu);
		$data['page'] = $this->load->view('setting_system/list_user_accsess',$data,true);
		$this->load->view('layout_backend',$data);
	}

	function user_accsess_update(){
		$data = $this->controller_attr;
		$data['function']='user_accsess';
		$group_id=$this->input->post('group_id');
		$id_menu=array();
		$id_menu = $this->input->post('id_menu');
		$accsess = $this->input->post('accsess');
       	$no=0;
        foreach ($id_menu as $field) {
           echo $field;
           if(isset($accsess[$field])){
           $cses=$accsess[$field];
           }else{
           	$cses="0";
           }
         $insert=array(
         	"id_menu"=>$field,
         	"id_group"=>$group_id,
         	);
        $cek_acsess=select_where_array($this->tbl_user_accsess,$insert);
        $insert=array(
         	"id_menu"=>$field,
         	"id_group"=>$group_id,
         	"accsess"=>$cses,
         	);
        if($cek_acsess->num_rows() >0){
        $cek_acsess=$cek_acsess->row();
        $query=update($this->tbl_user_accsess,$insert,'id',$cek_acsess->id);
        }else{
        $query=insert_all($this->tbl_user_accsess,$insert);   
        }
        }
        
		if($query){
			$this->session->set_flashdata('notif','success');
			$this->session->set_flashdata('msg','Your data have been updated');
		}else{
			$this->session->set_flashdata('notif','error');
			$this->session->set_flashdata('msg','Your data not updated');
		}
		redirect($data['controller']."/".$data['function']);
	}


	function list_accses_ajax($id){
		if($id==0){
			$data='';
		}else{
		$menu_akses=select_all($this->tbl_menu);
		$data='<table width="100%">
               <tr>
                 <td colspan="2"><h4>Name Menu</h4></td>
                 <td><h4>Accsess</h4></td>
               </tr>';
               foreach ($menu_akses as $key) {
                if($key->sub_menu==0){
                $akses=array(
         	"id_menu"=>$key->id,
         	"id_group"=>$id,
         	);
        $list=select_where_array($this->tbl_user_accsess,$akses)->row();
        if($list){
		if($list->accsess==1){
			$a='checked';
		}else{
			$a='';
		}  
		}else{
			$a='';
		}

		$data.=' <tr>
                <input value="'.$key->id.'" type="hidden" name="id_menu[]">
                 <td colspan="2"><h5><b>'.$key->name_menu.'</b></h5></td>
                 <td> <input type="checkbox" '.$a.' value="1" name="accsess['.$key->id.']"></td>
               </tr>';
            foreach ($menu_akses as $sub_menuacses) {
              if($sub_menuacses->sub_menu==$key->id){
              	 $akses=array(
         	"id_menu"=>$sub_menuacses->id,
         	"id_group"=>$id,
         	);
		 $list2=select_where_array($this->tbl_user_accsess,$akses)->row();
         if($list2){
		if($list2->accsess==1){
			$a='checked';
		}else{
			$a='';
		}
		}else{
			$a='';
		}
               $data.=' <tr>
                <input value="'.$sub_menuacses->id .'" type="hidden" name="id_menu[]">
                <td width="5%"></td>
                 <td>- '.$sub_menuacses->name_menu .'</td>
                 <td> <input type="checkbox" '.$a.' value="1" name="accsess['.$sub_menuacses->id .']"></td>
               </tr>';
            }}}}
               
            $data.='</table>';
        }
		echo json_encode($data);
	}
	
}
