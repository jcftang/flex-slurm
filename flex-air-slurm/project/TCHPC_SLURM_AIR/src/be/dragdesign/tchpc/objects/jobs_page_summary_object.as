package be.dragdesign.tchpc.objects
{
	/**
	 *	be.dragdesign.tchpc.objects | jobs_cpus
	 *	----------------------------------------------------------
	 *	 This is where the class description comes 
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: Jun 1, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class jobs_page_summary_object
	{
		
		//
		//	FIELDS
		//
		
		private var _str:String;
		private var _amt_jobs_running:Number = 0;
		private var _amt_jobs_pending:Number = 0;
		private var _amt_cpus_running:Number = 0;
		private var _amt_nodes_running:Number = 0;
		
		//
		//	CONSTRUCTOR
		//
		

		public function jobs_page_summary_object(str:String)
		{
			this.str = str;
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		public function get str():String
		{
			return _str;
		}
		
		public function set str(value:String):void
		{
			_str = value;
		}
		
		public function get amt_nodes_running():Number
		{
			return _amt_nodes_running;
		}
		
		public function set amt_nodes_running(value:Number):void
		{
			_amt_nodes_running = value;
		}
		
		public function get amt_jobs_pending():Number
		{
			return _amt_jobs_pending;
		}
		
		public function set amt_jobs_pending(value:Number):void
		{
			_amt_jobs_pending = value;
		}
		
		public function get amt_cpus_running():Number
		{
			return _amt_cpus_running;
		}
		
		public function set amt_cpus_running(value:Number):void
		{
			_amt_cpus_running = value;
		}
		
		public function get amt_jobs_running():Number
		{
			return _amt_jobs_running;
		}
		
		public function set amt_jobs_running(value:Number):void
		{
			_amt_jobs_running = value;
		}
		
		//
		//	FUNCTIONS
		//

		public function update_values(run:uint,pen:uint,cpus:uint,nodes:uint):void
		{
			this.amt_jobs_running += run;
			this.amt_jobs_pending += pen;
			this.amt_cpus_running += cpus;
			this.amt_nodes_running += nodes;
		}
		
		//
		//	EVENTS
		//
		
		
	}
}