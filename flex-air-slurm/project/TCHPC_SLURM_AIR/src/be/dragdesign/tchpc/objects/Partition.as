package be.dragdesign.tchpc.objects
{
	/**
	 *	be.dragdesign.tchpc.objects | Partition
	 *	----------------------------------------------------------
	 *  This class is an object-oriented representation of a Partition and it's detailed information.
	 *  This class also contains several functions to help in parsing and processing data specific to an instance of this Partition object.
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: May 12, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class Partition
	{
		
		//
		//	FIELDS
		//
		
		private var _AllocNodes:String;
		private var _AllowGroups:String; //	Don't know what the returned format'll be
		private var _Default:Boolean;
		private var _DefaultTime:String;
		private var _DisableRootJobs:Boolean;
		private var _Hidden:Boolean;
		private var _MaxNodes:String;	//	String cause value can also be UNLIMITED
		private var _MaxTime:String;
		private var _MinNodes:String;	
		private var _Nodes:String;	//	Host list
		private var _PartitionName:String;
		private var _PreemptMode:String;
		private var _Priority:Number;
		private var _RootOnly:Boolean;
		private var _Shared:Boolean;
		private var _state:String;
		private var _TotalCPUs:Number;
		private var _TotalNodes:Number;
		
		//
		//	CONSTRUCTOR
		//
		
		public function Partition()
		{
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		public function get state():String
		{
			return _state;
		}

		public function set state(value:String):void
		{
			_state = value;
		}

		public function get TotalNodes():Number
		{
			return _TotalNodes;
		}
		
		public function set TotalNodes(value:Number):void
		{
			_TotalNodes = value;
		}
		
		public function get TotalCPUs():Number
		{
			return _TotalCPUs;
		}
		
		public function set TotalCPUs(value:Number):void
		{
			_TotalCPUs = value;
		}
		
		public function get RootOnly():Boolean
		{
			return _RootOnly;
		}
		
		public function set RootOnly(value:Boolean):void
		{
			_RootOnly = value;
		}
		
		public function get Shared():Boolean
		{
			return _Shared;
		}
		
		public function set Shared(value:Boolean):void
		{
			_Shared = value;
		}
		
		public function get Priority():Number
		{
			return _Priority;
		}
		
		public function set Priority(value:Number):void
		{
			_Priority = value;
		}
		
		public function get PreemptMode():String
		{
			return _PreemptMode;
		}
		
		public function set PreemptMode(value:String):void
		{
			_PreemptMode = value;
		}
		
		public function get PartitionName():String
		{
			return _PartitionName;
		}
		
		public function set PartitionName(value:String):void
		{
			_PartitionName = value;
		}
		
		public function get Nodes():String
		{
			return _Nodes;
		}
		
		public function set Nodes(value:String):void
		{
			_Nodes = value;
		}
		
		public function get MinNodes():String
		{
			return _MinNodes;
		}
		
		public function set MinNodes(value:String):void
		{
			_MinNodes = value;
		}
		
		public function get MaxTime():String
		{
			return _MaxTime;
		}
		
		public function set MaxTime(value:String):void
		{
			_MaxTime = value;
		}
		
		public function get MaxNodes():String
		{
			return _MaxNodes;
		}
		
		public function set MaxNodes(value:String):void
		{
			_MaxNodes = value;
		}
		
		public function get Hidden():Boolean
		{
			return _Hidden;
		}
		
		public function set Hidden(value:Boolean):void
		{
			_Hidden = value;
		}
		
		public function get DisableRootJobs():Boolean
		{
			return _DisableRootJobs;
		}
		
		public function set DisableRootJobs(value:Boolean):void
		{
			_DisableRootJobs = value;
		}
		
		public function get DefaultTime():String
		{
			return _DefaultTime;
		}
		
		public function set DefaultTime(value:String):void
		{
			_DefaultTime = value;
		}
		
		public function get Default():Boolean
		{
			return _Default;
		}
		
		public function set Default(value:Boolean):void
		{
			_Default = value;
		}
		
		public function get AllowGroups():String
		{
			return _AllowGroups;
		}
		
		public function set AllowGroups(value:String):void
		{
			_AllowGroups = value;
		}
		
		public function get AllocNodes():String
		{
			return _AllocNodes;
		}
		
		public function set AllocNodes(value:String):void
		{
			_AllocNodes = value;
		}
		
		//
		//	FUNCTIONS
		//
		
		
		
		//
		//	EVENTS
		//
		
	}
}