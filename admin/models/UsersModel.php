<?php 
	trait UsersModel{
		public function modelRead($recordPerPage){
			$page = isset($_GET['p'])&& $_GET['p']>0 ?$_GET['p'] -1 :0;
			$from = $page*$recordPerPage;
			$conn= Connection::getInstance();
			$query = $conn->query("select * from users order by id desc limit $from,$recordPerPage");
			$result = $query->fetchAll(PDO::FETCH_OBJ);
			return $result;
		}
		// lay tpng so ban ghi
		public function modelTotalRecord(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from users");
			return $query->rowCount();
		}

		// xoa ban ghi
		public function modelDelete(){
			$id = isset($_GET['id']) && is_numeric($_GET['id'])? $_GET['id']:0;
			$conn = Connection::getInstance();
			$query = $conn->prepare("delete from users where id=:var_id");
			$query->execute(["var_id"=>$id]);
		}
		// lay moit ban ghi tuong ung voi id truyen vao
		public function modelGetRecord($id){
			// lay bien kn csdl
			$conn = Connection::getInstance();
			// thuc hien lay url truyen vao
			$query = $conn->prepare("select * from users where id=:var_id");
			//thuc thi truy van truyen tham so
			$query->execute(["var_id"=>$id]);
			return $query->fetch(PDO::FETCH_OBJ);
		}
		// chinh sua doi tuong
		public function modelUpdate($id){
			$name = $_POST['name'];
			$password = $_POST['password'];
			$age = $_POST['age'];
			//update name 
			$conn = Connection::getInstance();
			$query=$conn->prepare("update users set name=:var_name, age=:age where id=:var_id");
			//thuc thi truy van truyen tham so
			$query->execute(["var_id"=>$id, "var_name"=>$name, "age"=>$age]);
			//neu password khong rong thi cap nhat password va nguoc lai
			if($password != ""){
				//ma hoa password
				$password = md5($password);
				$query=$conn->prepare("update users set password=:var_password, age=:age where id=:var_id");
				$query->execute(["var_id"=>$id,"var_password"=>$password,"age"=>$age]);
			}
		}
		// tao moi mot doi tuong moi
		public function modelCreate(){
			$name = $_POST['name'];
			$password = $_POST['password'];
			$email = $_POST['email'];
			$age = $_POST['age'];
			// ma hoa passowrd
			$password = md5($password);
			// lay bien ket noi csdl
			$conn = Connection::getInstance();
			$query = $conn->prepare("insert into users set name=:var_name,email=:var_email,password=:var_password, age=:age");
			// thuc thi truy van truyen tham so
			$query->execute(["var_name"=>$name,"var_email"=>$email,"var_password"=>$password,"age"=>$age]);
		}
	}
 ?>