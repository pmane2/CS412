<?php include('config/constants.php'); ?>
<!-- Including the constants.php file for site-wide configuration -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Important to make the website responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dish Craft Order Website</title>
    <style>
    body {
        background-image: url('https://images.pexels.com/photos/1435895/pexels-photo-1435895.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        margin: 0; /* Remove default body margin */
        padding: 0; /* Remove default body padding */
    }
    </style>
    
    <link rel="stylesheet" href="css/style.css">
    <!-- Linking the external stylesheet for styling -->
</head>

<body>
    <!-- Navbar Section Starts Here -->
    <section class="navbar">
        <div class="container">
            <div class="logo">
                <a href="admin\login.php" title="Logo">
                    <img src="images\1.jpg" alt="Restaurant Logo" class="img-responsive">
                </a>
                <h2>ADMIN</h2>
            </div>

            <div class="menu text-right">
                <ul>
                    <li>
                        <a href="<?php echo SITEURL; ?>">Home</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>foods.php">Foods</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>

            <div class="clearfix"></div>
        </div>
    </section>
    <!-- Navbar Section Ends Here -->
</body>
</html>
