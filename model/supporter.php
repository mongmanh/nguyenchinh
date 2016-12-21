<?php
	require_once 'database.php';
	class baiviet extends database 
	{
		private $Supp_ID;
		private $Tensupporter;
		private $Sodienthoai;
		private $Email;
		private $Gioitinh;
		private $Nhom;
	
		function __construct()
		{
			$this->connect();
		}
		public function setSupp_ID($suppid){
			$this->Supp_ID = $suppid;
		}
		
		public function getSupp_ID(){
			return $this->Supp_ID;
		}
		public function setEmail($email){
			$this->Email = $email;
		}
		
		public function getEmail(){
			return $this->Email;
		}
		
		public function setTensupporter($tensupp){
			$this->Tensupporter = $tensupp;
		}
		
		public function getTensupporter(){
			return $this->Tensupporter;
		}
		public function setSodienthoai($sdt){
			$this->Sodienthoai=$sdt;
		}

		public function getSodienthoai(){
			return $this->Sodienthoai;
		}
		public function setNhom($nhom){
			$this->Nhom = $nhom;
		}
		
		public function getNhom(){
			return $this->Nhom;
		}
		public function setGioitinh($gt){
			$this->Gioitinh = $gt;
		}
		
		public function getGioitinh(){
			return $this->Gioitinh;
		}
		