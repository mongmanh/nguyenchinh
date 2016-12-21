<?php
	require_once 'database.php';
	class baiviet extends database 
	{
		private $Email;
		private $Tencustomer;
		private $Sodienthoai;
		function __construct()
		{
			$this->connect();
		}
		public function setEmail($email){
			$this->Email = $email;
		}
		
		public function getEmail(){
			return $this->Email;
		}
		
		public function setTencustomer($tencus){
			$this->Tencustomer = $tencus;
		}
		
		public function getTencustomer(){
			return $this->Tencustomer;
		}
		public function setSodienthoai($sdt){
			$this->Sodienthoai=$sdt;
		}

		public function getSodienthoai(){
			return $this->Sodienthoai;
		}
		
		