<?php
	
	trait HomeModel{
		public function modelHotProducts(){

			$conn = Connection::getInstance();
			$query = $conn->query("select * from products where hot=1 order by id desc limit 0,8");
			$result = $query->fetchAll(PDO::FETCH_OBJ);
			return $result;
		}
		public function modelAgeProducts(){
			if($_SESSION['customer_id']){
				$customer_id = $_SESSION['customer_id'];
				$conn = Connection::getInstance();
				$query = $conn->query("select * from products where age_from <= $customer_id and $customer_id <= age_to");
				$result = $query->fetchAll(PDO::FETCH_OBJ);
				return $result;
			}
			return [];
		}
		public function modelCategories(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from categories where parent_id =0 and id in (select category_id from
		 products where categories.id = products.category_id) order by modelCategories.id desc ");
			$result = $query->fetchAll(PDO::FETCH_OBJ);
			return $result;
		}
		// lay s sp theo dmsp 
		public function modelProducts($categoryId){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from
				 products where category_id in (select id form categories where id = $categoryId or parent_id = $categoryId) order
				  by id desc limit 0,6");
			$result = $query->fetchAll(PDO::FETCH_OBJ);
			return $result;
		}
		public function modelHotNew(){
			$conn = Connection::getInstance();
			$query = $conn->query("select * from news where hpt = 1 order by id desc limit 0,2");
			$result = $query->fetchAll(PDO::FETCH_OBJ);
			return $result;
		}
	}
?>