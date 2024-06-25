<?php

$con = mysqli_connect("localhost", "root", "", "liberian_db");

if (!$con) {
    echo "Connection error: " . mysqli_connect_error();
} else {
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $gender = $_POST['gender'];
    $dob = $_POST['dob'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $passport = $_POST['passport'];
    $address = $_POST['address'];
    $schoolWork = $_POST['school/work'];
    $center = $_POST['center'];
    $center_address = $_POST['center_address'];
    $image = $_FILES['image'];

    if(isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
        $file_tmp_name = $_FILES['image']['tmp_name'];
        $file_name = $_FILES['image']['name'];
        $file_extension = pathinfo($file_name, PATHINFO_EXTENSION);
        
        // Define a directory to store uploaded files
        $upload_dir = "uploads/";
        
        // Generate a unique filename to prevent overwriting existing files
        $unique_filename = uniqid() . '.' . $file_extension;
        
        // Move the uploaded file to the upload directory
        if(move_uploaded_file($file_tmp_name, $upload_dir . $unique_filename)) {
            $image_path = $upload_dir . $unique_filename;
        } else {
            echo "Failed to move uploaded file.";
            exit();
        }
    } else {
        echo "No file uploaded.";
        exit();
    }

    $insertquery = "INSERT INTO `liberia_dbtable`(`firstname`, `lastname`, `gender`, `dob`, `email`, `phone`, `passport`, `address`, `school/work`, `center`,`center_address`,`image`)
        VALUES ('$firstname','$lastname','$gender','$dob','$email','$phone','$passport','$address','$schoolWork','$center','$center_address','$image_path')";

    try {
        if (mysqli_query($con, $insertquery)) {
            $success = "Your Registration Data Have Been Received By The LIBCOR 2024 General Election IEC Committee. Note: You Are To Vote Where You've Registered!";
            header("Location: index.php?success=$success");
        } else {
            $error = mysqli_error($con);
            header("Location: index.php?error=$error");
        }
    } catch (mysqli_sql_exception $e) {
        $error = "You cannot register with the same passport number twice! " . $e->getMessage();
        header("Location: index.php?error=$error");
    }
    exit();
}
?>