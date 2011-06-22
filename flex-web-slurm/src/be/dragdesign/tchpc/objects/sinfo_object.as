package be.dragdesign.tchpc.objects
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import mx.events.PropertyChangeEvent;

	/**
	 *	be.dragdesign.tchpc.objects | sinfo_object
	 *	----------------------------------------------------------
	 *  This class is an object-oriented representation of an sinfo row and it's detailed information.
	 *  This class also contains several functions to help in parsing and processing data specific to an instance of this sinfo row.
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: May 19, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class sinfo_object extends EventDispatcher
	{
		
		//
		//	FIELDS
		//
		
		private var _nodelist		:	String;
		private var _nodecount		:	uint;
		private var _partition_name	:	String;
		private var _nodestate		:	String;
		private var _cpus			:	uint;
		private var _s_c_t			:	String;
		private var _memory			:	Number;
		private var _tmp_disk		:	Number;
		private var _weight			:	Number;
		private	var _features		:	Array;
		private var _reason			:	String;
		
		//
		//	CONSTRUCTOR
		//
		
		public function sinfo_object()
		{
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		[Bindable(event="propertyChange")] 
		public function get reason():String
		{
			return _reason;
		}
		
		public function set reason(value:String):void
		{
			_reason = value;
			dispatchEvent(new Event(PropertyChangeEvent.PROPERTY_CHANGE));
		}
		
		[Bindable(event="propertyChange")] 
		public function get features():Array
		{
			return _features;
		}
		
		
		public function set features(value:Array):void
		{
			_features = value;
			dispatchEvent(new Event(PropertyChangeEvent.PROPERTY_CHANGE));
		}
		
		[Bindable(event="propertyChange")] 
		public function get weight():Number
		{
			return _weight;
		}
		
		public function set weight(value:Number):void
		{
			_weight = value;
			dispatchEvent(new Event(PropertyChangeEvent.PROPERTY_CHANGE));
		}
		
		[Bindable(event="propertyChange")] 
		public function get tmp_disk():Number
		{
			return _tmp_disk;
		}
		
		public function set tmp_disk(value:Number):void
		{
			_tmp_disk = value;
			dispatchEvent(new Event(PropertyChangeEvent.PROPERTY_CHANGE));
		}
		
		[Bindable(event="propertyChange")] 
		public function get memory():Number
		{
			return _memory;
		}
		
		public function set memory(value:Number):void
		{
			_memory = value;
			dispatchEvent(new Event(PropertyChangeEvent.PROPERTY_CHANGE));
		}
		
		[Bindable(event="propertyChange")] 
		public function get s_c_t():String
		{
			return _s_c_t;
		}
		
		public function set s_c_t(value:String):void
		{
			_s_c_t = value;
			dispatchEvent(new Event(PropertyChangeEvent.PROPERTY_CHANGE));
		}
		
		[Bindable(event="propertyChange")] 
		public function get cpus():uint
		{
			return _cpus;
		}
		
		public function set cpus(value:uint):void
		{
			_cpus = value;
			dispatchEvent(new Event(PropertyChangeEvent.PROPERTY_CHANGE));
		}
		
		[Bindable(event="propertyChange")] 
		public function get nodestate():String
		{
			return _nodestate;
		}
		
		public function set nodestate(value:String):void
		{
			_nodestate = value;
			dispatchEvent(new Event(PropertyChangeEvent.PROPERTY_CHANGE));
		}
		
		[Bindable(event="propertyChange")] 
		public function get partition_name():String
		{
			return _partition_name;
		}
		
		public function set partition_name(value:String):void
		{
			_partition_name = value;
			dispatchEvent(new Event(PropertyChangeEvent.PROPERTY_CHANGE));
		}
		
		[Bindable(event="propertyChange")] 
		public function get nodecount():uint
		{
			return _nodecount;
		}
		
		public function set nodecount(value:uint):void
		{
			_nodecount = value;
			dispatchEvent(new Event(PropertyChangeEvent.PROPERTY_CHANGE));
		}
		
		[Bindable(event="propertyChange")] 
		public function get nodelist():String
		{
			return _nodelist;
		}
		
		public function set nodelist(value:String):void
		{
			_nodelist = value;
			dispatchEvent(new Event(PropertyChangeEvent.PROPERTY_CHANGE));
		}
		
		//
		//	FUNCTIONS
		//
		
		
		
		//
		//	EVENTS
		//
		
		
		

	}
}