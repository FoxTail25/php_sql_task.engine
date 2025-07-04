<?php

if(!empty($_POST['userName']) and !empty($_POST['userSurName']) and !empty($_POST['userBirthDate'])) {
	$userName = $_POST['userName'];
	$userSurName = $_POST['userSurName'];
	$userBirthDate = $_POST['userBirthDate'];
	$query = "INSERT INTO users SET name='$userName', surname='$userSurName', birthdate='$userBirthDate'";
	mysqli_query($site_base_link, $query) or die(mysqli_error($site_base_link));
	unset($_POST);
	return ['title' => 'new user', 'content' => '
	<div>
	<h5 class="p-2 text-center">Пользователь успешно добавлен</h5>
	</div>
	'];

} else {

	$query = "SELECT * FROM pages WHERE slug = 'new_user'";
	$page = mysqli_fetch_assoc(mysqli_query($site_base_link, $query));
	return $page;
}
?>