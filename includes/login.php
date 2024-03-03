
<?php
if(isset($_POST['login'])) {
   login_user($_POST['username'],$_POST['password']);
}?>