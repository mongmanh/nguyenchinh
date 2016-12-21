<?php 

	/**
	* 
	*/
	class database{
		public $_conn;
		private $__hostname = 'localhost';
		private $__username = 'root';
		private $__password = '';
		private $__db_name = 'chatsupport';
		private $__result = '';

		public function connect(){

			$this->_conn = mysqli_connect($this->__hostname, $this->__username, $this->__password);
			mysqli_select_db($this->_conn, $this->__db_name);
		}
		public function disconnect(){

			if($this->_conn)
				mysqli_close($this->_conn);
		}

		public function query($sql){

            if($this->_conn)
            	$this->__result = mysqli_query($this->_conn, $sql) or die('Query data fail');
		}
		
		//Dem so dong
		public function get_num_rows(){

			if($this->__result)
				$row = mysqli_num_rows($this->__result);
			else
				$row = 0;

			return $row;
		}

		public function fetch_result(){
			$row = [];
			if($this->__result)
				$row = mysqli_fetch_array($this->__result);
			
			return $row;
		}

		public function get_row(){
			if($this->__result)
				return mysqli_fetch_array($this->__result);
		}
	}
 ?>