<?php 

	class Connection{
	public static function getInstance(){
		$server_name = "localhost";
		$database_name = "bansach";
		$username = "root";
		$password = "Admin@123";

		$conn = new PDO("mysql:host=localhost;dbname=bansach",'root','Admin@123');
		$conn->exec("set names utf8");
		return $conn;
		}
	}
 ?>