<?php

class Users_model extends CI_Model {

        

        public function __construct()
        {
                // Call the CI_Model constructor
                parent::__construct();
                $this->load->database();
        }

        public function AddUser($Name,$Password,$Email,$Interest) {
            if(! $this->CheckUser($Email,$Password)){
                $data = array(
                    'Name' => $Name,
                    'Password' => md5($Password),
                    'Email' => $Email,
                    'Interest' => $Interest
                    );
                $this->db->insert('user', $data);
            }
            return 1;
        }
        
        public function CheckUser($Email,$Password) {
            $condition = array(
                    'Email' => $Email,
                    'Password' => md5($Password)
                    );
            $this->db->where($condition);
            $query = $this->db->get('user');
            return $result=$query->row_array();
        }
        
        public function GetUserSessionData($Email)
        {
            $this->db->select('ID,Name,Email,Interest')->where('Email',$Email);
            $query = $this->db->get('users');
            $result = $query->row_array();
            return $result;
        }
        
        public function GetUserProfileData($username)
        {
            $this->db->select('ID,FirstName,LastName,Email,Username,Purpose')->where('username',$username);
            $query = $this->db->get('user');
            $result = $query->row_array();
            return $result;
        }
        
        public function GetMembershipRequests_ForAdmin()
        {
            $this->db->select('ID,FirstName,LastName,Email,Username,Purpose')->where('Hash',!(1));
            $query = $this->db->get('user');
            $result = $query->result_array();
            return $result;
        }
        
        public function ConfirmUser_ForAdmin($userID) {
            $this->db->set('Hash', "1");
            $this->db->where('ID', $userID);
            $this->db->update('user');
        }
        
        public function GetMembers_ForAdmin() {
            $conditons = array('Hash' => 1, 'Type' => 'normal');
            $this->db->select('ID,FirstName,LastName,Email,Username,Purpose')->where($conditons);
            $query = $this->db->get('user');
            $result = $query->result_array();
            return $result;
        }
        
        public function RemoveUser_ForAdmin($userID) {
            $this->db->set('Hash', "");
            $conditons = array('Hash' => 1, 'Type' => 'normal', 'ID' => $userID);
            $this->db->where($conditons);
            $this->db->update('user');
        }
        
        public function GetUserProfileData_ForAdmin($userID){
            $this->db->select('ID,FirstName,LastName,Email,Username,Purpose')->where('ID',$userID);
            $query = $this->db->get('user');
            $result = $query->row_array();
            return $result;
        }
}
