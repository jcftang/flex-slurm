package be.dragdesign.tchpc.objects
{
	/**
	 *	be.dragdesign.tchpc.objects | hostlist_state_object
	 *	----------------------------------------------------------
	 *	 This is where the class description comes 
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: Jun 9, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class hostlist_state_object
	{
		
		//
		//	FIELDS
		//
		
		private var _hostlist:String;
		private var _state_string:String;
		
		//
		//	CONSTRUCTOR
		//
		
		public function hostlist_state_object(state_string:String,hostlist:String)
		{
			this.hostlist = hostlist;
			this.state_string = state_string;
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		
		
		//
		//	FUNCTIONS
		//
		
		public function get state_string():String
		{
			return _state_string;
		}
		
		public function set state_string(value:String):void
		{
			_state_string = value;
		}
		
		public function get hostlist():String
		{
			return _hostlist;
		}
		
		public function set hostlist(value:String):void
		{
			_hostlist = value;
		}

		
		//
		//	EVENTS
		//
		
	}
}