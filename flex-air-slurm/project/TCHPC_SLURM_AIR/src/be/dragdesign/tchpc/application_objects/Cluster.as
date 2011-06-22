package be.dragdesign.tchpc.application_objects
{
	/**
	 *	be.dragdesign.tchpc.application_objects | Cluster
	 *	----------------------------------------------------------
	 *	 This is where the class description comes 
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: May 25, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class Cluster
	{
		
		//
		//	FIELDS
		//
		
		private var _name:String;
		private var _url:String;
		
		//
		//	CONSTRUCTOR
		//
		
		public function Cluster(name:String,url:String)
		{
			this.name 	= name;
			this.url	= url;
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		
		
		//
		//	FUNCTIONS
		//
		
		
		
		//
		//	EVENTS
		//
		
		
		public function get url():String
		{
			return _url;
		}

		public function set url(value:String):void
		{
			_url = value;
		}

		public function get name():String
		{
			return _name;
		}

		public function set name(value:String):void
		{
			_name = value;
		}

	}
}