<?php
	class Node
	{
		public $name 			= NULL;
		public $arch 			= NULL;
		public $boot_time 		= NULL;
		public $cpus 			= NULL;
		public $cores 			= NULL;
		public $features 		= NULL;
		public $gres 			= NULL;
		public $node_state 		= NULL;
		public $os			= NULL;
		public $real_memory		= NULL;
		public $reason			= NULL;
		public $reason_time		= NULL;
		public $reason_uid		= NULL;
		public $slurmd_start_time	= NULL;
		public $sockets			= NULL;
		public $threads			= NULL;
		public $tmp_disk		= NULL;
		public $weight			= NULL;

		public function parse_node_array($node_arr) {
			$this->name 			= $node_arr["Name"];
			$this->arch 			= $node_arr["Arch."];
			if($node_arr["Boot Time"] != NULL) {		
				$this->boot_time 	= strtotime($node_arr["Boot Time"]);
			}
			$this->cpus 			= $node_arr["#CPU'S"];
			$this->cores			= $node_arr["#Cores/CPU"];
			$this->features			= $node_arr["Features"];
			$this->gres			= $node_arr["GRES"];
			$this->node_state 		= $node_arr["State"];
			$this->os			= $node_arr["OS"];
			$this->real_memory		= $node_arr["Real Mem"];
			$this->reason			= $node_arr["Reason"];
			$this->reason_uid		= $node_arr["Reason User Id"];
			if($node_arr["Slurmd Startup Time"] != NULL) {
				$this->slurmd_start_time= strtotime($node_arr["Slurmd Startup Time"]);
			}
			$this->sockets			= $node_arr["#Sockets/Node"];
			$this->threads			= $node_arr["#Threads/Core"];
			$this->tmp_disk			= $node_arr["TmpDisk"];
			$this->weight			= $node_arr["Weight"];
		}

		public function create_my_key() {
			$str = "";
			($this->node_state == NULL)       ? $str .= "NULL" : $str .= $this->node_state;
			($this->features[0] == NULL)      ? $str .= "NULL" : $str .= $this->features[0];
			($this->cpus == NULL)             ? $str .= "NULL" : $str .= $this->cpus;
			($this->tmp_disk == NULL)         ? $str .= "NULL" : $str .= $this->tmp_disk;
			($this->weight == NULL)           ? $str .= "NULL" : $str .= $this->weight;
			($this->cores == NULL)            ? $str .= "NULL" : $str .= $this->cores;
			($this->sockets == NULL)          ? $str .= "NULL" : $str .= $this->sockets;
			($this->threads == NULL)          ? $str .= "NULL" : $str .= $this->threads;
			($this->real_memory == NULL)	  ? $str .= "NULL" : $str .= $this->real_memory;
			return $str;
		}
	}
?>
