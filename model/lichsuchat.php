<?php
	require_once 'database.php';
	class baiviet extends database 
	{
		private $Chater_ID;
		private $Type;
		private $Message;
		private $Datetime;
	
		function __construct()
		{
			$this->connect();
		}
		public function setChater_ID($chatid){
			$this->Chater_ID = $chatid;
		}
		
		public function getChater_ID(){
			return $this->Chater_ID;
		}
		public function setType($type){
			$this->Type= $type;
		}
		
		public function getType(){
			return $this->Type;
		}
		
		public function setMessage($message){
			$this->Message = $message;
		}
		
		public function getMessage(){
			return $this->Message;
		}
		public function setDatetime($date){
			$this->Datetime=$date;
		}

		public function getDatetime(){
			return $this->Datetime;
		}
		