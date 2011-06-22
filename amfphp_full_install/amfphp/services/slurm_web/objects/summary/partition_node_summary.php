<?php
	class partition_node_summary
	{
		public $state_arr	= NULL;
		public $core_arr	= NULL;
		public $cpu_arr		= NULL;
		public $name		= NULL;
		
		public function __construct($name) {
			$this->name		= $name;
			$this->state_arr 	= array(0,0,0,0,0,0,0,0);
			$this->core_arr 	= array(0,0,0,0,0,0,0,0);
			$this->cpu_arr		= array(0,0,0,0,0,0,0,0);
		}	
	}
?>
