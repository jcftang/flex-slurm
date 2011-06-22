package be.dragdesign.tchpc.events
{
	/**
	 *	be.dragdesign.tchpc.events | HermesEvent
	 *	----------------------------------------------------------
	 *	Hermes was a demigod who executed the task of being the messenger of the gods
	 *	As i am trying to send a message from one component to a parent-component without 
	 *	having to undergo the trouble of actually doing shit ... i'll let hermes handle the trafficz for me. 
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: May 16, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	import flash.events.Event;
	
	
	public class HermesEvent_Adv extends Event
	{
		
		//
		//	FIELDS
		//
		
		public static const HERMES_REQUESTS_YOUR_ATTENTION:String="hermes_adv";
		public var str_my_name:String;
		public var params:Array
		
		//
		//	CONSTRUCTOR
		//
		
		public function HermesEvent_Adv(type:String,str_my_name:String,params:Array,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type,bubbles,cancelable);
			this.str_my_name = str_my_name;
			this.params = params;
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		
		
		//
		//	FUNCTIONS
		//
		
		override public function clone():Event {
			return new HermesEvent_Adv(type,str_my_name,params);
		}
		
		//
		//	EVENTS
		//
		
		
	}
}