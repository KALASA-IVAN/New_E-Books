<?php
class User_model extends CI_model 
{

    public function login_user($email, $password){
       $this->db->where('email',$email);
       $this->db->where('password',$password);
       $result = $this->db->get('users');
       if($result->num_rows()>0){
           return true;
       }else{
           return false;
       }
    }

    public function registration(){
       $location=$this->db->query("select d.*, s.* from district d inner join sector s where s.district_id = d.district_id");
       return $location->result();
    }
    public function get_roles(){
        $roles=$this->db->query("SELECT * FROM roles");
        return $roles->result();
    }
    
    public function insertUser($data){
        $this->db->insert('users', $data);
        $this->load->view('User/upload_view');
    }
    public function insert_book($data){
        $insert_data['book_isbn'] = $data['book_isbn'];
        $insert_data['book_name'] = $data['book_name'];

        $this->db->insert('books', $insert_data);
       $this->load->view('user/upload_view');
    }
}