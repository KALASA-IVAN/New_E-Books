<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main page</title>
    <link rel="stylesheet" href="<?php echo base_url(); ?>\assets\css\bootstrap.min.css">
    <script src="<?php echo base_url(); ?>assets\js\jquery.js"></script>
    <script src="<?php echo base_url(); ?>assets\js\bootstrap.min.js"></script>

</head>

<body>
    <div class="container-fluid">
        <?php $this->load->view('users/header'); ?>
    </div>
    <div class="container d-flex">
        <div class="col-sm-3">
            <?php $this->load->view('users/login_view'); ?>
        </div>
        <div class="col-sm-9 bg-secondary">
            <?php $this->load->view($main_view); ?>
        </div>
    </div>
    <div class="container-fluid">
        <?php $this->load->view('users/footer'); ?>
    </div>

</body>

</html>