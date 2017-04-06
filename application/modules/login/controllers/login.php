<?php

if (!defined('BASEPATH'))
	exit('No direct script access allowed');


class login extends DC_controller {

	function __construct() {
		parent::__construct();
		if($this->router->fetch_method()=='index'){
			$method='';
		}else{
			$method=str_replace('_',' ',$this->router->fetch_method());
		}
		$this->controller_attr = array('controller' => 'login','controller_name' => 'Login','method'=>ucwords($method));
	}
	
	
	
}

