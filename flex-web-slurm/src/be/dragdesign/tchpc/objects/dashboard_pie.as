package be.dragdesign.tchpc.objects
{
	import be.dragdesign.tchpc.application_objects.c_node_summary;

	/**
	 *	be.dragdesign.tchpc.objects | dashboard_pie
	 *	----------------------------------------------------------
	 *	 This is where the class description comes 
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: May 20, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class dashboard_pie
	{
		
		//
		//	FIELDS
		//
		
		private var _state:String;
		private var _amount:Number;
		private var _cpus:Number;
		private var _cores:Number;
		
		
		
		//
		//	CONSTRUCTOR
		//
		
		public function dashboard_pie(state:uint)
		{
			this.state = c_node_summary.convert_state_to_string(state);
			this.amount = 0;
			this.cpus = 0;
			this.cores = 0;
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		public function get cores():Number
		{
			return _cores;
		}
		
		public function set cores(value:Number):void
		{
			_cores = value;
		}
		
		public function get cpus():Number
		{
			return _cpus;
		}
		
		public function set cpus(value:Number):void
		{
			_cpus = value;
		}
		
		public function get amount():Number
		{
			return _amount;
		}
		
		public function set amount(value:Number):void
		{
			_amount = value;
		}
		
		public function get state():String
		{
			return _state;
		}
		
		public function set state(value:String):void
		{
			_state = value;
		}
		
		//
		//	FUNCTIONS
		//
		
		public function update_values(cpus:Number,cores:Number,amount:Number):void
		{
			this.cpus += cpus*amount;
			this.cores += cores*amount;
			this.amount += amount;
		}
		
		
		//
		//	EVENTS
		//

	}
}