package be.dragdesign.tchpc.objects
{
	/**
	 *	be.dragdesign.tchpc.objects | Config_Value
	 *	----------------------------------------------------------
	 *	 This is where the class description comes 
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: May 13, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class Config_Value
	{
		
		//
		//	FIELDS
		//
		
		private var _key:String;
		private var _value:String;
		
		//
		//	CONSTRUCTOR
		//
		
		public function Config_Value(key:String,value:String)
		{
			this.key = key;
			this.value = value;
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
		
		
		public function get value():String
		{
			return _value;
		}

		public function set value(value:String):void
		{
			_value = value;
		}

		public function get key():String
		{
			return _key;
		}

		public function set key(value:String):void
		{
			_key = value;
		}

	}
}