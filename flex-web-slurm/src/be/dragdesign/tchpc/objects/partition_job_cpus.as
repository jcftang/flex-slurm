package be.dragdesign.tchpc.objects
{
	import be.dragdesign.tchpc.application_objects.c_partition_summary;

	/**
	 *	be.dragdesign.tchpc.objects | partition_job_cpus
	 *	----------------------------------------------------------
	 *	This class contains data surrounding a partition/total
	 *  about a summary of jobs/cpus for that specific partition
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: May 17, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class partition_job_cpus
	{
		
		//
		//	FIELDS
		//
		
		private var _name:String;
		private var type:String;
		private var _jobs_pending:uint;
		private var _jobs_running:uint;
		private var _cpus_pending:uint;
		private var _cpus_running:uint;
		private var _cpus_available:uint;
		private var _cpus_not_available:uint;
		
		//
		//	CONSTRUCTOR
		//
		
		public function partition_job_cpus(name:String,jobs_pending:uint,jobs_running:uint,cpus_pending:uint,cpus_running:uint,cpus_available:uint=0,cpus_not_available:uint=0)
		{
			this.name = name;
			switch(this.name) 
			{
				case "TOTAL":
					this.type = c_partition_summary.FULL_JOB_CPU;
					break;
				default:
					this.type = c_partition_summary.PARTITION_JOB_CPU;
					break;
			}
			this.jobs_pending = jobs_pending;
			this.jobs_running = jobs_running;
			this.cpus_pending = cpus_pending;
			this.cpus_running = cpus_running;
			this.cpus_available = cpus_available;
			this.cpus_not_available = cpus_not_available;
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		public function get cpus_not_available():uint
		{
			return _cpus_not_available;
		}

		public function set cpus_not_available(value:uint):void
		{
			_cpus_not_available = value;
		}

		public function get cpus_available():uint
		{
			return _cpus_available;
		}

		public function set cpus_available(value:uint):void
		{
			_cpus_available = value;
		}

		public function get cpus_running():uint
		{
			return _cpus_running;
		}
		
		public function set cpus_running(value:uint):void
		{
			_cpus_running = value;
		}
		
		public function get cpus_pending():uint
		{
			return _cpus_pending;
		}
		
		public function set cpus_pending(value:uint):void
		{
			_cpus_pending = value;
		}
		
		public function get jobs_running():uint
		{
			return _jobs_running;
		}
		
		public function set jobs_running(value:uint):void
		{
			_jobs_running = value;
		}
		
		public function get jobs_pending():uint
		{
			return _jobs_pending;
		}
		
		public function set jobs_pending(value:uint):void
		{
			_jobs_pending = value;
		}
		
		public function get name():String
		{
			return _name;
		}
		
		public function set name(value:String):void
		{
			_name = value;
		}
		
		//
		//	FUNCTIONS
		//
		
		
		
		//
		//	EVENTS
		//

	}
}