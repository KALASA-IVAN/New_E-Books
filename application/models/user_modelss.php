<?php

class User_model extends CI_Model
{

    // public function get_users($user_id, $username)
    // {

    //     // $query=$this->db->query("SELECT * FROM users where user_id = 2 ");

    //     // return $query->num_fields();

    //     $this->db->where([
    //         'user_id' => $user_id,
    //         'uname' => $username
    //     ]);
    //     $query = $this->db->get('users');

    //     return $query->result();
    // }
    // public function create_users($data)
    // {

    //     $this->db->insert('users', $data);
    // }

    // public function update_users($data,$id)
    // {
    //     $this->db->where(['user_id'=>$id]);

    //     $this->db->insert('users', $data);
    // }

    // public function delete_users($id){

    //     $this->db->where(['user_id'=>$id]);
    //     $this->db->delete('users');
    // }

    public function login_user($username, $password)
    {
        $this->db->where('uname',$username);
        $this->db->where('password',$password);
        $result = $this->db->get('users');
        if ($result->num_rows() == 1) {
            return $result->row(0)->id;
        } else {
            return false;
        }
    }
}
