<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>book upload</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>

<body>
    <div class="overflow-auto container-fluid bg-white">
        <?php $this->load->view('users/header'); ?>
    </div>
    <h1 class="text-center text-secondary">Upload a book</h1>
    <div class=" mt-3 container bg-secondary rounded p-3 shadow-lg col-lg-5 col-xl-4 col-md-10 col-sm-10 col-12 mb-5">
        <h3 class="fw-bold mb-3">Register a book</h3>

        <form action=<?php echo base_url("do_upload") ?> method="POST" enctype='multipart/form-data' class="m-auto">
            <div class="form-group mb-3 pt-2">
                <label for="floatingInput">Upload book</label>
                <input type="file" class="form-control shadow-none" name="book_name" id="floatingInput">
            </div>
            <div class="form-group mb-3 pt-2">
                <label for="floatingInput">Book ISBN</label>
                <input type="" class="form-control form-control-sm p-2 shadow-none" name="book_isbn" id="floatingInput">
            </div>
            <div class="form-group mb-3 pt-2">
                <button type="submit" class=" mb-2 btn btn-secondary col-3">Upload</button>
            </div>
        </form>
    </div>
    </div>
</body>

</html>