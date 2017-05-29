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
        
        public function GetUserData($ID)
        {
            $this->db->select('ID,Name,Email,Interest')->where('ID',$ID);
            $query = $this->db->get('user');
            $result = $query->row_array();
            return $result;
        }
        
        public function UpdateProfile($ID,$Name,$Email,$Interest) {
            $data = array(
                    'Name' => $Name,
                    'Email' => $Email,
                    'Interest' => $Interest
                    );
            $this->db->where('ID',$ID);
            $this->db->update('user', $data);
        }
        
}
