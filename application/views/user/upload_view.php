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
</head>

<body>
    <div class="container">
    </div>
    <div class="container-fluid">
        <?php $this->load->view('users/header'); ?>
        <a class=" col-9 p-5 text-decoration-none text-dark" href="<?= base_url('upload_book'); ?>">Upload book</a>
        <a class=" col-9 p-5 text-decoration-none text-dark" href="<?= base_url('logout'); ?>">Upload book</a>
        <div class="container d-flex flex-wrap">
            <div class="card m-2" style="width: 12rem;">
                <img src="assets/images/background.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Boook 1</h5>
                    <p class="card-text">Some quick example text to builBoook 1 and make up.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
            <div class="card m-2" style="width: 12rem;">
                <img src="assets/images/background.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up .</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
            <div class="card m-2" style="width: 12rem;">
                <img src="assets/images/background.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
            <div class="card m-2" style="width: 12rem;">
                <img src="assets/images/background.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up .</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
            <div class="card m-2" style="width: 12rem;">
                <img src="assets/images/background.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>

        </div>
    </div>
</body>

</html>