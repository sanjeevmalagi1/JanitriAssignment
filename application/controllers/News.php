<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class News extends CI_Controller {

	public function __construct()
        {
                parent::__construct();
                $this->load->model('News_model');
                
        }
	
        public function index($page=0)
        {
            if(($this->session->userdata('logged_in')== TRUE))
            {    
                $this->load->view('Templates/stylesheets');
                $this->load->view('Templates/header');
                $this->load->view('Templates/Leftmenu');
                $this->load->view('Templates/titlebar');
                $data['page'] = $page;
                $data['news'] = $this->News_model->GetNews($this->session->userdata('Interest'),$page);
                $this->load->view('News/List',$data);
                $this->load->view('Templates/scripts');
            }
            else{
                redirect(base_url().'index.php/User/LogIn/');
            }
        }
        
        public function ScrapNews(){
            $response = file_get_contents('https://newsapi.org/v1/articles?source=espn-cric-info&sortBy=latest&apiKey=c9d18881f5cf4446b066b0d7989b79b2');
            $result = json_decode($response); 
            if($result->status == "ok"){
                foreach ($result->articles as $article) {
                    $this->News_model->AddNews($article->title,$article->description,$article->urlToImage,$article->url,$article->author,"Sports");
                }
            }
            
            $response = file_get_contents('https://newsapi.org/v1/articles?source=daily-mail&sortBy=latest&apiKey=c9d18881f5cf4446b066b0d7989b79b2');
            $result = json_decode($response); 
            if($result->status == "ok"){
                foreach ($result->articles as $article) {
                    $this->News_model->AddNews($article->title,$article->description,$article->urlToImage,$article->url,$article->author,"Movies");
                }
            }
            
            $response = file_get_contents('https://newsapi.org/v1/articles?source=daily-mail&sortBy=latest&apiKey=c9d18881f5cf4446b066b0d7989b79b2');
            $result = json_decode($response); 
            if($result->status == "ok"){
                foreach ($result->articles as $article) {
                    $this->News_model->AddNews($article->title,$article->description,$article->urlToImage,$article->url,$article->author,"Movies");
                }
            }
        }
}