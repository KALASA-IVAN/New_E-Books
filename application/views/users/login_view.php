<h1>Login form</h1>

<?php $attributes = array('id' => 'login_form', 'class' => 'form-horizontal'); ?>

<?php if($this->session->flashdata('errors')):?>
<?php  echo $this->session->flashdata('errors');?>
<?php endif; ?>

<?php echo form_open('users/login', $attributes); ?>

<div class="form_group">
    <?php echo form_label('Username'); ?>

    <?php
    $data = array(
        'class' => 'form-control',
        'name' => 'username',
        'placeholder' => 'Enter username'
    );
    ?>
    <?php echo form_input($data); ?>
</div>
<div class="form_group">
    <?php echo form_label('Password'); ?>

    <?php
    $data = array(
        'class' => 'form-control',
        'name' => 'password',
        'placeholder' => 'Enter password'
    );
    ?>
    <?php echo form_password($data); ?>
</div>
<div class="form_group">

    <?php
    $data = array(
        'class' => 'btn btn-primary mt-2 col-sm-3',
        'name' => 'submit',
        'value' => 'Login'
    );
    ?>
    <?php echo form_submit($data); ?>
</div>

<?php echo form_close(); ?>