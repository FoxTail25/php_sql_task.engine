<?php
$id = $_GET['id'];
$query = "SELECT * FROM users WHERE id = '$id'";
$userData = mysqli_fetch_assoc(mysqli_query($site_base_link, $query));
preg_match('#(\d*)-(\d*)-(\d*)#', $userData['birthdate'], $match);
$birthDate = $match[3].'-'.$match[2].'-'.$match[1];
$content = "
<div>
<p>Имя: $userData[name]</p>
<p>Фамилия: $userData[surname]</p>
<p>День Рождения: $birthDate</p>
</div>
";

return ['title' => $userData['name'], 'content' => $content];
?>