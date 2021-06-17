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
      overflow: none;
    }

    body {
      height: 100vh;
      width: 98%;
      background-image: url('./assets/images/background.png') !important;
      background-size: cover;
    }

    .container {
      /* height: %; */
      margin: auto;
      background: rgba(255, 165, 0, 0.73);
    }

    input {
      padding: 10px;
    }

    h3 {
      color: #222;
    }

    button {
      background-color: #222 !important;
    }

    small {
      color: red;
    }

    strong {
      color: green;
    }
  </style>
</head>

<body class="">
  <h1 class="text-center text-secondary"> Register to <strong>E-</strong>Books</h1>
  <div class="overflow-auto container-fluid bg-white">
    <!-- <?php $this->load->view('users/header'); ?> -->
  </div>
  <div class=" mt-3 container bg-secondary rounded p-3 shadow-lg col-lg-5 col-xl-4 col-md-10 col-sm-10 col-12 mb-5">
    <h3 class="fw-bold mb-3">Give your credentials to get a book</h3>

    <form action=<?php echo base_url("register") ?> method="POST" enctype='multipart/form-data' class="m-auto">
      <div class="form-floating mb-3 pt-2">
        <input type="text" class="form-control form-control-sm shadow-none" name="names" id="floatingInput" placeholder="Full names">
        <label for="floatingInput">Full names</label>
        <small><?= form_error('names') ?></small>
      </div>

      <div class="form-floating mb-3 pt-2">
        <input type="email" class="form-control form-control-sm shadow-none" name="email" id="floatingInput" placeholder="Email">
        <label for="floatingInput">Email Address</label>
        <small><?= form_error('email') ?></small>
      </div>

      <select onchange=getSector(this) class="form-select p-2" name="district" aria-label="Default select example" required>
        <option>Select distirct</option>
        <?php
        $prevloc = '';
        foreach ($locations as $location) {
          if ($prevloc != $location->district_name) {
            echo "<option value=$location->district_id > $location->district_name </option>";
          }
          $prevloc = $location->district_name;
        }
        ?>
      </select>

      <select class="form-select mb-3 mt-3 sectors p-2" name="sector" aria-label="Default select example" required>
        <option selected value="">Select Sector</option>
        <?php
        foreach ($locations as $location) {
          echo "<option style='display: none;' class='$location->district_id sectors-options' value=$location->sector_id > $location->sector_name </option>";
        }
        ?>
      </select>
      <select class="form-select mb-3 mt-3 roles p-2" name="role" aria-label="Default select example" required>
        <option selected value="">Select role</option>
        <?php
        $prevloc = '';
        foreach ($roles as $role) {
          if ($prevrol != $role->Role) {
            echo "<option value=$role->roleId> $role->Role </option>";
          }
          $prevrol = $role->Role;
        }
        ?>
      </select>

      <div class="form-floating mb-3 pt-2">
        <input type="text" class="form-control shadow-none" name="username" id="floatingInput" placeholder="Username">
        <label for="floatingInput">Username</label>
        <small><?= form_error('username') ?></small>
      </div>

      <div class="form-floating mb-3 pt-2">
        <input type="password" class="form-control shadow-none" name="password" id="floatingInput" placeholder="Password">
        <label for="floatingInput">Password</label>
        <small><?= form_error('password') ?></small>
      </div>
      <div class="form-floating mb-3 pt-2">
        <button type="submit" class=" mb-2 btn btn-secondary col-3">Register</button>
        <a class="col-9 p-5 text-light" href="<?= base_url('User/login_view'); ?>">Already has an account!</a>
      </div>
    </form>
  </div>
  </div>
  <script>
    function getSector(id) {
      let selector = document.getElementsByClassName("sectors")[0];
      selector.value = "";
      let allSectors = document.getElementsByClassName("sectors-options");
      for (let a = 0; a < allSectors.length; a++) {
        allSectors[a].style.display = "none";
      }
      let sectors = document.getElementsByClassName(id.value);
      for (let i = 0; i < sectors.length; i++) {
        sectors[i].style.display = "block";
      }
    }
  </script>
</body>

</html>