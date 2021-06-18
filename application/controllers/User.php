<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper(array('form', 'url'));
    }

    public function index()
    {
        $data = [
            'locations' => $this->User_model->registration(),
            'roles' => $this->User_model->get_roles(),
        ];
        $this->load->view('User/signup', $data);
    }
    public function login_view()
    {
        $this->load->view('user/login');
    }
    public function header()
    {
        $this->load->view('users/header');
    }
    public function login()
    {
        $this->form_validation->set_rules(
            'email',
            'Email',
            'trim|required|valid_email'
        );

        $this->form_validation->set_rules(
            'Password',
            'Password',
            'trim|required'
        );

        if ($this->form_validation->run()) {
            $email = $this->input->post('email');
            $password = hash('SHA512', $this->input->post('Password'));

            if($this->User_model->login_user($email, $password)){
                $user_data= array(
                    'email' => $email,
                    'password' => $password,
                );
                $this->session->set_userdata('login_user',$user_data);
                $this->load->view('user/upload_view');
            }else {
                $invalid_error = 'Invalid username and password';
                $this->load->view('user/login', compact('invalid_error'));
            }
        } else {
            $this->load->view('user/login');
        }
    }
    public function display_roles()
    {
        $roles = $this->User_model->get_roles();
        print_r($roles);
    }
    public function upload_book()
    {
        $this->load->view('user/upload');
    }

    public function register()
    {
        $this->form_validation->set_rules('names', 'Names', 'trim|required|min_length[4]|max_length[45]');
        $this->form_validation->set_rules('email', 'Email', 'trim|required|is_unique[users.email]|valid_email', array('is_unique' => "Email Already taken"));
        $this->form_validation->set_rules(
            'username',
            'User Name',
            'trim|required|min_length[2]|max_length[15]|is_unique[users.username]',
            array('is_unique' => "Username Already taken")
        );
        $this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[6]|max_length[40]');

        if ($this->form_validation->run() == false) {
            $this->index();
        } else {
            $data = array(
                'fullnames' => $this->input->post('names'),
                'email' => $this->input->post('email'),
                'districtId' => $this->input->post('district'),
                'sectorId' => $this->input->post('sector'),
                'roleId' => $this->input->post('role'),
                'username' => $this->input->post('username'),
                'password' => hash('SHA512', $this->input->post('password')),
            );
            $this->User_model->insertUser($data);
        }
    }
    public function do_upload()
    {
        $isbn = $this->input->post("book_isbn");

        $config['upload_path'] = './uploads';
        $config['allowed_types'] = 'pdf';
        $config['max-size'] = '100';

        $this->load->library('upload', $config);
        if (!$this->upload->do_upload('book_name')) {
            echo $this->upload->display_errors();
        } else {
            array('upload_data' => $this->upload->data());
            $fd = $this->upload->data();
            $fn = $fd['file_name'];

            $data_saved = array(
                'book_isbn' => $isbn,
                'book_name' => $fn,
            );
            $this->User_model->insert_book($data_saved);
        }
    }

    public function upload_view()
    {
        $this->load->view('user/upload_view');
    }
    public function logout(){
        
    }
}
