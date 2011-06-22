<?php
	class sinfo_object
	{
		
		//
		//	FIELDS
		//

		public $nodelist	=	NULL;
		public $nodes		=	NULL;
		public $partition_name	=	NULL;
		public $state		=	NULL;
		public $cpus		=	NULL;
		public $s_c_t		=	NULL;
		public $memory		=	NULL;
		public $tmp_disk	=	NULL;
		public $weight		=	NULL;
		public $features	=	NULL;
		public $reason		=	NULL;

		//
		//	CONSTRUCTOR
		//

		public function __construct(	$nodelist,
						$nodes,
						$partition_name,
						$state,
						$cpus,
						$s_c_t,
						$memory,
						$tmp_disk,
						$weight,
						$features,
						$reason)
		{
			$this->nodelist 	= $nodelist;
			$this->nodes		= $nodes;
			$this->partition_name 	= $partition_name;
			$this->state		= $state;
			$this->cpus		= $cpus;
			$this->s_c_t		= $s_c_t;
			$this->memory		= $memory;
			$this->tmp_disk		= $tmp_disk;
			$this->weight		= $weight;
			$this->features 	= $features;
			$this->reason		= $reason;
		}
	}
?>
