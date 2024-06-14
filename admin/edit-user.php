<?php
include "partials/header.php";
if(!isset($_SESSION['user_is_admin'])){
    header("location: " . ROOT_URL . "logout.php");
    //destruye todos los sesiones y redirige al usuario a la página de inicio
    session_destroy();
}

if(isset($_GET['id'])){
    $id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);
    $query = "SELECT firstname,lastname,is_admin FROM users WHERE id='$id'";
    $result = mysqli_query($connection, $query);
    $user = mysqli_fetch_assoc($result);
}else{
    header('location: ' . ROOT_URL . 'admin/manage-users.php');
}
?>

<section class="form__section">
    <div class="container form__section-container">
        <h2>Editar Usuario</h2>

        <form action="<?=ROOT_URL?>admin/edit-user-logic.php" enctype="multipart/form-data" method ="POST">
        <input type="hidden" value="<?=$id?>" name='id'>
            <input type="text" name ="firstname" value="<?= $user['firstname'] ?>"  placeholder="Nombre">
            <input type="text" name ="lastname"  value="<?= $user['lastname'] ?>"   placeholder="Apellido">
			<select name="userrole">
				<option value="0">Autor</option>
				<option <?= $user['is_admin'] ? 'selected' : '' ?> value="1">Admin</option>
			</select>
            <button type="submit" name="submit" class="btn">Editar</button>
        </form>
    </div>
</section>




<?php
include "../partials/footer.php";
?>