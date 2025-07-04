<?php
$query = "SELECT * FROM users";
$dbAnswer = mysqli_query($site_base_link, $query);
for($data =[]; $row= mysqli_fetch_assoc($dbAnswer); $data[]=$row);
$content = '<h4>Список пользователей</h4>';
foreach($data as $elem) {
	$content .= "
	<div>
		<a href=\"/page/user.php?id=$elem[id]\">$elem[name]</a>
	</div>
	";
}
$page = ['title' => 'все пользователи', 'content' => $content];
return $page;




?>
