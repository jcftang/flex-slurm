<?php
	/**
	* key_value.php - Object Oriented Class
	*
	* This class is an object-oriented representation of a partition and its summary of jobs/cpus
	* <b>Metadata</b>
	* @link https://computing.llnl.gov/linux/slurm/
	* @author Peter Vermeulen <nmb.peterv@gmail.com>
	* @version 1.0
	* @license http://www.gnu.org/licenses/gpl-2.0.html
	* @package objects 
	*/
	class partition_job_cpus
	{
		
		//
		//	FIELDS
		//
		
		public $name		= NULL;
		public $jobs_pending 	= NULL;
		public $jobs_running 	= NULL;
		public $cpus_pending	= NULL;
		public $cpus_running	= NULL;
		public $cpus_not_available = NULL;
		public $cpus_available = NULL;

		//
		//	CONSTRUCTOR
		//
		
		public function __construct($name,$jobs_pending,$jobs_running,$cpus_pending,$cpus_running,$cpus_not_available,$cpus_available) {
			$this->name		= $name;
			$this->jobs_pending 	= $jobs_pending;
			$this->jobs_running 	= $jobs_running;
			$this->cpus_pending	= $cpus_pending;
			$this->cpus_running	= $cpus_running;
			$this->cpus_not_available = $cpus_not_available;
			$this->cpus_available	= $cpus_available;
		}
	}
?>
