<?php include ('../lib/dbconnect.php') ?>
<!DOCTYPE html>
<html>
    <head>
        <title> New Moutzouris Game </title>
        <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="header">
        <h2>New Player</h2>
    </div>

<form method="post" action="register.php">
    <?php include('errors.php'); ?>
    <div class="input-group">
        <label>Username</label>
        <input type"text" name="username" value="<?php echo $name; ?>">
    </div>

    <div class="input-group">
        <button type="submit" class="btn" name="reg_player">Let's Start</button>
    </div>
</form>
</body>
</html>