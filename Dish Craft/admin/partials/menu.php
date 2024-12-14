<?php 

    include('../config/constants.php'); 
    include('login-check.php');

?>


<html>
    <head>
        <title>Dish Craft Admin</title>
    
        <link rel="stylesheet" href="../css/admin.css">
        <style>
    body {
        background-image: url('https://images.pexels.com/photos/616401/pexels-photo-616401.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        margin: 0; /* Remove default body margin */
        padding: 0; /* Remove default body padding */
    }
</style>

    </head>
    
    <body >
        
        <!-- Menu Section Starts -->
        <div class="menu text-center">
            <div class="wrapper">
                
                <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="manage-admin.php">Admin</a></li>
                    <li><a href="manage-category.php">Category</a></li>
                    <li><a href="manage-food.php">Food</a></li>
                    <li><a href="manage-order.php">Order</a></li>
                    <li><a href="logout.php">Logout</a></li>
                </ul>
            </div>
        </div>
        <!-- Menu Section Ends -->