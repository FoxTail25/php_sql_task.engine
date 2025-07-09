<?php
$name = $params['slug'];
$query = "SELECT * FROM users WHERE name = '$name'";
$userData = mysqli_fetch_assoc(mysqli_query($site_base_link, $query));
preg_match('#(\d*)-(\d*)-(\d*)#', $userData['birthdate'], $date);
$birthDate = $date[3].'-'.$date[2].'-'.$date[1];
$content = "
<div>
<p>Имя: $userData[name]</p>
<p>Фамилия: $userData[surname]</p>
<p>День Рождения: $birthDate</p>
</div>
";

return ['title' => $userData['name'], 'content' => $content];
?>