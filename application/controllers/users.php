<?php

class Users extends CI_Controller
{

    // public function show($user_id)
    // {

    //     $data['results'] = $this->user_model->get_users($user_id, 'kalivanis');

    //     $this->load->view('user_view', $data);
    // }
    // public function insert()
    // {
    //     $firstname = 'Nzakira';
    //     $lastname = 'Peter';
    //     $email = 'nzakirapeter@gmail.com';
    //     $uname = 'nzakira';
    //     $password = 'nzakira1234';

    //     $this->user_model->create_users([
    //         'firstname' => $firstname,
    //         'lastname' => $lastname,
    //         'email' => $email,
    //         'uname' => $uname,
    //         'password' => $password
    //     ]);
    // }
    // public function update()
    // {
    //     $id=5;
    //     $firstname = 'Harry';
    //     $lastname = 'Poter';
    //     $email = 'harrypoter@gmail.com';
    //     $uname = 'HarryPoter';
    //     $password = 'harry1234';

    //     $this->user_model->update_users([
    //         'firstname' => $firstname,
    //         'lastname' => $lastname,
    //         'email' => $email,
    //         'uname' => $uname,
    //         'password' => $password
    //     ],$id);
    // }
    // public function delete(){
    //     $id=6;
    //     $this->user_model->delete_users($id);
    // }
    public function show()
    {
        $this->load->view('users/header');
        $this->load->view('users/login_view');
    }

    public function login()
    {
        $this->form_validation->set_rules('username', 'Username', 'trim|required');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');
        if ($this->form_validation->run() == FALSE) {

            $data = array(
                'errors' => validation_errors()

            );

            $this->session->set_flashdata($data);

            redirect('home');
        } else {
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            // $hashedPassword = hash("SHA512", $password);
7
            $user_id = $this->user_model->login_user($username, $password);

            if ($user_id) {
                $user_data = array(
                    'User_id' => $user_id,
                    'username' => $username,
                    'loggen_in' => true
                );
                $this->session->set_userdata($user_data);
                $this->session->set_flashdata('login_success', 'You are logged in!');
                redirect('home/index');
            } else {
                $this->session->set_flashdata('login_failed', 'Failed to login!');
                redirect('home/index');
            }
        }
    }
}
