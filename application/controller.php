<?php
	class Controller {
		public function loadView($filename, $data=NULL){
			if($data != NULL)
				extract($data);
			if(file_exists("views/$filename")){
				$view = NULL;
				$layout = NULL;

				ob_start();
				include "views/$filename";
				$view = ob_get_contents();
				ob_get_clean();
				if($layout != NULL){
					include "views/$layout";
				}else
				echo $view;
			}
		}

		public function authentication(){
			if(!isset($_SESSION["email"])){
				header("location:index.php?controller=login");
			}
		}
	}
?>