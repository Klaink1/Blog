<?php
require 'config/database.php';

if(isset($_POST['submit'])){
    $id=filter_var($_POST['id'],FILTER_SANITIZE_NUMBER_INT);
    $is_featured=filter_var($_POST['is_featured'],FILTER_SANITIZE_NUMBER_INT);
    $title=filter_var($_POST['title'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $body=filter_var($_POST['body'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $previous_thumbnail_name=filter_var($_POST['previous_thumbnail_name'],FILTER_SANITIZE_FULL_SPECIAL_CHARS);
    $category_id=filter_var($_POST['category_id'],FILTER_SANITIZE_NUMBER_INT);
    $thumbnail=$_FILES['thumbnail'];


    $is_featured=$is_featured == 1  ?: 0;


    if(!$title){
        $_SESSION['edit-post']="No se pudo actualizar el post. Datos de formulario no válidos";
    }elseif(!$category_id){
        $_SESSION['edit-post']="No se pudo actualizar el post. Datos de formulario no válidos";
    }elseif(!$body){
        $_SESSION['edit-post']="No se pudo actualizar el post. Datos de formulario no válidos";
    }else{
        if($thumbnail['name']){
            $previous_thumbnail_destination='../images/' . $previous_thumbnail_name;
            if($previous_thumbnail_destination){
                unlink($previous_thumbnail_destination);
            }
        

        
        $time=time();
        $thumbnail_name=$time . $thumbnail['name'];
        $thumbnail_tmp_name=$thumbnail['tmp_name'];
        $thumbnail_destination_path="../images/" . $thumbnail_name;


        $allowed_files=['jpg','png','jpeg'];
        $extension=explode('.',$thumbnail_name);
        $extension=end($extension);
        if(in_array($extension,$allowed_files)){

            if($thumbnail['size']<2000000){

                move_uploaded_file($thumbnail_tmp_name,$thumbnail_destination_path);

            }else{
                $_SESSION['edit-post']="El tamaño del archivo es demasiado grande.Debe ser menor que 2mb";

            }
        }else{
            $_SESSION['edit-post']="El archivo debe ser png, jpg o jpeg";
    
        }
    }
        

    }


    if(isset($_SESSION['edit-post'])){

        header('location: ' . ROOT_URL . 'admin/');
        die();
        }else{

        if($is_featured==1){
            $zero_all_is_featured_query="UPDATE posts SET is_featured=0";
            $zero_all_is_featured_result=mysqli_query($connection,$zero_all_is_featured_query);
        }        
        $thumbnail_to_insert= $thumbnail_name ?? $previous_thumbnail_name;


            //insert post into database
            $query="UPDATE posts SET title='$title', body='$body' ,thumbnail='$thumbnail_to_insert' ,category_id='$category_id',is_featured=$is_featured WHERE id=$id LIMIT 1";
            $result=mysqli_query($connection,$query);   
        }

        if(!mysqli_errno($connection)){
            $_SESSION['edit-post-success']="Post actualizado correctamente";
        }
}
header('location: ' . ROOT_URL . 'admin/');
die();