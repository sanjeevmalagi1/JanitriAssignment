<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
        public function __construct()
        {
                parent::__construct();
                $this->load->model('Users_model');
                
        }
	
        public function SignIn()
        {
            if(($this->session->userdata('logged_in')== FALSE))
            {    
		$this->load->view('Templates/stylesheets.php');
                $this->load->view('SignUp/Form.php');
                $this->load->view('Templates/scripts.php');
                
                if($_SERVER['REQUEST_METHOD']=='POST')
                {
                    $this->Users_model->AddUser($this->input->post('Name'),$this->input->post('Password'),$this->input->post('Email'),$this->input->post('Interest'));
                    $result=$this->Users_model->CheckUser($this->input->post('Email'),$this->input->post('Password'));
                    if($result){
                    $session = array(
                           'ID'  => $result['ID'],
                           'Name'  => $result['Name'],
                            'Email'  => $result['Email'],
                            'Interest'  => $result['Interest'],
                            'logged_in' => TRUE
                            );
                     $this->session->set_userdata($session);
                     redirect(base_url().'index.php/News/');
                    }
                    else {
                        redirect(base_url().'index.php/User/LogIn/');
                    }
                }
            }
            else{
                redirect(base_url().'index.php/News/');
            }
        }
        
        public function LogIn()
	{
            if(($this->session->userdata('logged_in')== FALSE))
            {    
		$this->load->view('Templates/stylesheets.php');
                $this->load->view('LogIn/Form.php');
                $this->load->view('Templates/scripts.php');
                if($_SERVER['REQUEST_METHOD']=='POST')
                {
                    $result=$this->Users_model->CheckUser($this->input->post('Email'),$this->input->post('Password'));
                    if($result){
                        $session = array(
                                    'ID'  => $result['ID'],
                                    'Name'  => $result['Name'],
                                    'Email'  => $result['Email'],
                                    'Interest'  => $result['Interest'],
                                    'logged_in' => TRUE
                                    );
                         $this->session->set_userdata($session);
                         redirect(base_url().'index.php/News/');
                    }
                    else{
                        redirect(base_url().'index.php/User/LogIn?msg=Error');
                    }
                }
            }
            else{
                redirect(base_url().'index.php/News/');
            }
        }
        
        public function LogOut()
        {
            $this->session->sess_destroy();
            redirect(base_url().'index.php/User/LogIn');
        }
}