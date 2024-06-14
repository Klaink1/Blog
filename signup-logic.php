<?php
require "config/database.php";
session_start();



if(isset($_POST["submit"])){
    $firstname = filter_var($_POST['firstname'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $lastname = filter_var($_POST['lastname'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $username = filter_var($_POST['username'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    $createpassword = filter_var($_POST['createpassword'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $confirmpassword = filter_var($_POST['confirmpassword'], FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $avatar = $_FILES['avatar'];
    if(!$firstname){
        $_SESSION['signup'] = 'Por favor ingrese su nombre';
    }elseif(!$lastname){
        $_SESSION['signup'] = 'Por favor ingrese su apellido';
    }elseif(!$username){
        $_SESSION['signup'] = 'Por favor ingrese su nombre de usuario';
    }elseif(!$email){
        $_SESSION['signup'] = 'Por favor ingrese su correo electrónico';
    }elseif(strlen($createpassword)<8 || strlen($confirmpassword)<8){
        $_SESSION['signup'] = 'La contraseña debe tener 8 caracteres o más';
    }elseif(!$avatar['name']){
        $_SESSION['signup'] = 'Por favor agregue una foto';
    }else{
        if($createpassword !== $confirmpassword){
            $_SESSION['signup']="Las contraseñas no coinciden";

        }else{


            $hashed_password = password_hash($createpassword,PASSWORD_DEFAULT);
            


            $user_check_query="SELECT * FROM users WHERE username='$username' OR email ='$email'";
            $user_check_result = mysqli_query($connection, $user_check_query);
            if(mysqli_num_rows($user_check_result)>0){
                $_SESSION['signup'] = "El nombre de usuario o el correo electrónico ya existe";
            }else{
                
                
                $time = time(); 
                $avatar_name = $time . $avatar['name'];
                $avatar_tmp_name=$avatar['tmp_name'];
                $avatar_destination_path='images/' . $avatar_name;

               
                $allowed_files = ['png', 'jpg', 'jpeg'];
                $extension = explode('.', $avatar_name);
                $extension = end($extension);
                if(in_array($extension,$allowed_files)){
                    
                    if($avatar['size']<1000000){

                     
                        move_uploaded_file($avatar_tmp_name, $avatar_destination_path);
                    }else{
                        $_SESSION['signup']="El tamaño del archivo es demasiado grande.Debe ser menor que 1mb";
                    }
                }else{
                    $_SESSION['signup']="El archivo debe ser png, jpg o jpeg";
                }
            }



        }
    }
    
    if(isset($_SESSION['signup'])){
       
        $_SESSION['signup-data'] = $_POST;
        header('location: ' . ROOT_URL . 'signup.php');
        die();
        
    }else{
       
        $inset_user_query = "INSERT INTO users SET firstname ='$firstname' ,lastname='$lastname',username='$username',email ='$email' ,password='$hashed_password',avatar='$avatar_name',is_admin=0";
        $inset_user_result = mysqli_query($connection, $inset_user_query);
        if(!mysqli_errno($connection)){
            $_SESSION['signup-success'] = "Registro exitoso. Por favor inicia sesión";
            header('location: ' . ROOT_URL . 'signin.php');

        }
    }
}else{
    
    header('location: ' . ROOT_URL . "signup.php");
    die();
}