<?php

class News_model extends CI_Model {

        

        public function __construct()
        {
                // Call the CI_Model constructor
                parent::__construct();
                $this->load->database();
        }

        public function AddNews($Heading,$Body,$ImageLink,$Link,$Author,$Catagory) {
            if(! $this->CheckAlreadyExist($Heading)){
                $data = array(
                    'Heading' => $Heading,
                    'Body' => $Body,
                    'ImageLink' => $ImageLink,
                    'Link' => $Link,
                    'Author' => $Author,
                    'Catagory' => $Catagory
                    );
                
                $this->db->insert('news', $data);
            }
            
            return 1;
        }
        
        public function GetNews($Catagory,$page=0) {
            $this->db->where('Catagory',$Catagory);
            $this->db->order_by("Time", "desc");
            $this->db->limit(10,$page*10);
            $query = $this->db->get('news');
            $result = $query->result_array();
            return $result;
        }
        
        private function CheckAlreadyExist($Heading) {
            $this->db->where('Heading',$Heading);
            $query = $this->db->get('news');
            $result = $query->result_array();
            return $result;
        }
}
