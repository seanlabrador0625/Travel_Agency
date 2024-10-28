<?php
defined('BASEPATH') OR exit('No direct script access allowed');
error_reporting(E_ALL ^ E_DEPRECATED);

class Account_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->library('session');
		$this->load->database();
		$this->load->model('Account_model');
		$this->load->helper('url');
	}

	//Saving User Registration
	public function savedata($mydata)
	{
		$this->db->insert("userregistration",$mydata);
		return true;
	}

	// Authenticating User Login
	public function getlogin($username_or_email, $pass)
	{
	// Fetch the user record based on the email or username
		$this->db->where('username', $username_or_email);
    	$this->db->or_where('email', $username_or_email);
    	$query = $this->db->get('userregistration');
		$row = $query->row();
		
		// If user exists and password is correct
		if(isset($row)) {
			$decryptedPassword = $this->encryption->decrypt($row->pass);
			if($decryptedPassword == $pass){
			return $row;
			}
		} else {
			return false;
		}
	}

	// Verify if the admin account exists
	public function getAdminlogin($username, $pass)
	{
		$this->db->where('username', $username);
		$query = $this->db->get('useradmin');
		$row = $query->row();
	
		#print_r($this->db->last_query()); // Debugging query
	
		if (isset($row)) {
			$decryptedPassword = $this->encryption->decrypt($row->pass);
	
			if ($decryptedPassword == $pass) {
				return true; 
			}
		}
	
		return false; 
	}
   
	public function insertAdminAcc($myAdmin){
		$this->db->insert("useradmin",$myAdmin);
		return true;
	}

		public function get_loginID($username)
		{
			$this->db->select('id');
			$this->db->from('userlogin');
			$this->db->where('username', $username);
			$query = $this->db->get();
			return $query->row()->id;
		}
		
}
