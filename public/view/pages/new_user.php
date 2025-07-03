<?php
$new_user = file_get_contents('view/baseview/new_user.html');
return [ 'title' => 'new user', 'content' => $new_user];