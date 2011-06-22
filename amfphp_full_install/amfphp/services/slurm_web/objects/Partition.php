<?php
	class Partition
	{
		public $PartitionName 		= NULL;
		public $AllocNodes 		= NULL;
		public $AllowGroups 		= NULL;
		public $Default 		= NULL;
		public $DefaultTime 		= NULL;
		public $DisableRootJobs 	= NULL;
		public $Hidden 			= NULL;
		public $MaxNodes 		= NULL;
		public $MinNodes		= NULL;
		public $MaxTime			= NULL;
		public $Nodes			= NULL;
		public $Priority		= NULL;
		public $RootOnly		= NULL;
		public $Shared			= NULL;
		public $PreemptMode		= NULL;
		public $State			= NULL;
		public $TotalCPUs		= NULL;
		public $TotalNodes		= NULL;
		
		public function parse_partition_array($part_arr) {
			$this->PartitionName	= $part_arr["PartitionName"];
			$this->AllocNodes	= $part_arr["AllocNodes"];
			$this->Default		= $part_arr["Default"];
			$this->DefaultTime	= $part_arr["DefaultTime"];
			$this->DisableRootJobs	= $part_arr["DisableRootJobs"];
			$this->Hidden		= $part_arr["Hidden"];
			$this->MaxNodes		= $part_arr["MaxNodes"];
			$this->MinNodes		= $part_arr["MinNodes"];
			$this->MaxTime		= $part_arr["MaxTime"];
			$this->Nodes		= $part_arr["Nodes"];
			$this->Priority		= $part_arr["Priority"];
			$this->RootOnly		= $part_arr["RootOnly"];
			$this->Shared		= $part_arr["Shared"];
			$this->PreemptMode	= $part_arr["PreemptMode"];
			$this->State		= $part_arr["State"];
			$this->TotalCPUs	= $part_arr["TotalCPUs"];
			$this->TotalNodes	= $part_arr["TotalNodes"];
		}
	}
?>
