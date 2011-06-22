package be.dragdesign.tchpc.global_functions
{
	/**
	 *	be.dragdesign.tchpc.global_functions | Instances
	 *	----------------------------------------------------------
	 *	 This is where the class description comes 
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: May 19, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	
	
	public class Instances
	{
		
		//
		//	FIELDS
		//
		
		private static var instance:Instances;
		
		//
		//	CONSTRUCTOR
		//
		
		public function Instances(obj:Enforcer):void
		{
		}
		
		public static function get_instance():Instances
		{
			if(instance==null) {
				instance = new Instances(new Enforcer);
			}
			return instance;
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		public function convert_string_to_boolean(s:String):Boolean
		{
			if(s=="NO") {
				return false;
			} else {
				return true;
			}
		}
		
		//
		//	FUNCTIONS
		//
		
		
		
		//
		//	EVENTS
		//
		
		
	}
}
class Enforcer {
	
}