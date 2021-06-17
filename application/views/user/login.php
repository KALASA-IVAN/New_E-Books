<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            height: 100vh;
            width: 98%;
            background-image: url('./assets/images/background.png') !important;
            background-size: cover !important;
        }

        .container {
            /* height: 55%; */
            background: rgba(255, 165, 0, 0.73);
            margin: auto;
        }

        h3 {
            color: #222;
        }

        input[type=submit] {
            background-color: #222 !important;

        }

        p .errors {
            color: red !important;
        }

        strong {
            color: green;
        }
    </style>
</head>

<body class="">
    <h1 class=" mt-2 text-center text-secondary">Login to <strong>E-</strong>Books</h1>
    <div class="container-fluid">
        <!-- <?php $this->load->view('users/header'); ?> -->
    </div>
    <div class=" mt-5 container bg-secondary rounded p-4 shadow-lg col-lg-5 col-xl-4 col-md-6 col-sm-10 col-10 ">
        <h3 class=" text-center fw-bold mb-3">Log In</h3>

        <?php $attributes = array('class' => 'mt-auto'); ?>
        <?php echo form_open(base_url("login"), $attributes) ?>

        <div class="form-floating mb-3  pt-2">

            <?php $atts = array(
                'type' => 'text',
                'id' => 'floatingInput',
                'class' => 'form-control shadow-none',
                'name' => 'email',
                'placeholder' => 'Email'
            );
            ?>
            <?php echo form_input($atts) ?>
            <?php echo form_label('Email', '"for"="floatingInput"') ?>
            <span class="text-danger"> <?php echo form_error('email') ?> </span>
        </div>

        <div class="form-floating mb-3 pt-2">
            <?php $attr = array(
                'type' => 'password',
                'class' => 'form-control shadow-none',
                'name' => 'Password',
                'placeholder' => 'Password'
            );
            ?>
            <?php echo form_password($attr) ?>
            <?php echo form_label('Password',) ?>
            <span class="text-danger"> <?php echo form_error('Password') ?> </span>
        </div>
        <div class="form-floating mb-3 pt-2">
            <?php
            $attr = array(
                'type' => 'submit',
                'class' => 'btn btn-secondary col-2',
                'name' => 'submit',
                'value' => 'Login'
            );
            ?>
            <?php echo form_submit($attr) ?>
            <?php echo $this->session->flashdata('error')?>
            <a class=" col-9 text-light" href="<?= base_url('User'); ?>">Create an account !</a>
        </div>

        <?php echo form_close(); ?>
        </form>
    </div>
</body>

</html>