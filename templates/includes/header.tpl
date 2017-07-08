<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="{$metatags.description}" />
    <meta name="keywords" content="{$metatags.keywords}" />
    <meta name="author" content="">

    <title>{pagegetvar name='title'}</title>

    <!-- Bootstrap core CSS -->
    {pageaddvar name="stylesheet" value="$themepath/vendor/bootstrap/css/bootstrap.min.css"}

    <!-- Custom fonts for this template -->
    {pageaddvarhack name="stylesheet" value="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i"}
    {pageaddvarhack name="stylesheet" value="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900"}
    {pageaddvar name="stylesheet" value="$themepath/vendor/font-awesome/css/font-awesome.min.css"}

    <!-- Custom styles for this template -->
    {pageaddvar name="stylesheet" value="$stylepath/style.css"}

    <!-- Temporary navbar container fix -->
    <style>
        .navbar-toggler {
            z-index: 1;
        }

        @media (max-width: 576px) {
            nav > .container {
                width: 100%;
            }
        }
    </style>

</head>

<body>

<div class="masthead">

    <a href="/">
        <img class="logo hidden-md-down" src="{$imagepath}/logo.svg" alt="">
    </a>
    <!-- Navigation -->
    <nav class="navbar navbar-toggleable-md navbar-inverse navbar-custom">
        <a class="navbar-brand hidden-lg-up" href="#">
            <img src="{$imagepath}/logo.svg" height="60" alt="">
        </a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu <i class="fa fa-bars"></i>
        </button>
        {blockposition name=navigation}
    </nav>

    <ul class="masthead-signup list-inline">
        <li class="list-inline-item"><a class="btn btn-outline-primary" href="#">Log In</a></li>
        <li class="list-inline-item"><a class="btn btn-outline-primary" href="#">Contact</a></li>
        <li class="list-inline-item"><a class="btn btn-primary" href="#">Join</a></li>
    </ul>

</div>