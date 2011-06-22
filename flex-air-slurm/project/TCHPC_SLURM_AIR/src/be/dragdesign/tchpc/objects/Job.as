package be.dragdesign.tchpc.objects
{

	/**
	 *	be.dragdesign.tchpc.objects | Job
	 *	----------------------------------------------------------
	 *  This class is an object-oriented representation of a Job and it's detailed information.
	 *  This class also contains several functions to help in parsing and processing data specific to an instance of this Job object.
	 *	----------------------------------------------------------
	 *	Author 	: Vermeulen Peter <nmb.peterv@gmail.com>
	 *	Date   	: May 10, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class Job
	{
		
		//
		//	FIELDS
		//
		
		private var _JobId				:uint;
		private var _Name				:String;
		private var _UserId				:String;
		private var _GroupId			:String;
		private var _Priority			:uint;
		private var _Account			:String;
		private var _QOS				:String;
		private var _JobState			:String;
		private var _dependency			:String;
		private var _Requeue			:String;
		private var _RunTime			:String;
		private var _TimeLimit			:String;
		private var _TimeMin			:String;
		private var _SubmitTime			:Date;
		private var _EligibleTime		:Date;
		private var _ReqNodeList		:String;
		private var _ExcNodeList		:String;
		private var _StartTime			:Date;
		private var _EndTime			:Date;		
		private var _Partition			:String;
		private var _NumCpus			:uint;
		private var _NumNodes			:uint;
		private var _Cpus_Task			:String;
		private var _ReqS_C_T			:String;
		private var _MinCPUsNode		:uint;
		private var _MinMemoryNode		:uint;
		private var _MinTmpDisk			:uint;
		private var _Features			:Array;
		private var _Reservation		:String;
		private var _Shared				:String;
		private var _NodeList			:String;
		private var _Licenses			:Array;
		private var _Contiguous			:String;
		private var _Network			:String;
		private var _Command			:String;
		private var _WorkDir			:String;
		private var _Reason				:String;
		
		//
		//	CONSTRUCTOR
		//
		
		public function Job()
		{
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		public function get Account():String
		{
			return _Account;
		}

		public function set Account(value:String):void
		{
			_Account = value;
		}

		public function get WorkDir():String
		{
			return _WorkDir;
		}

		public function set WorkDir(value:String):void
		{
			_WorkDir = value;
		}

		public function get Command():String
		{
			return _Command;
		}

		public function set Command(value:String):void
		{
			_Command = value;
		}

		public function get Network():String
		{
			return _Network;
		}

		public function set Network(value:String):void
		{
			_Network = value;
		}

		public function get Contiguous():String
		{
			return _Contiguous;
		}

		public function set Contiguous(value:String):void
		{
			_Contiguous = value;
		}

		public function get Shared():String
		{
			return _Shared;
		}

		public function set Shared(value:String):void
		{
			_Shared = value;
		}

		public function get Reservation():String
		{
			return _Reservation;
		}

		public function set Reservation(value:String):void
		{
			_Reservation = value;
		}

		public function get Features():Array
		{
			return _Features;
		}

		public function set Features(value:Array):void
		{
			_Features = value;
		}

		public function get MinTmpDisk():uint
		{
			return _MinTmpDisk;
		}

		public function set MinTmpDisk(value:uint):void
		{
			_MinTmpDisk = value;
		}

		public function get MinMemoryNode():uint
		{
			return _MinMemoryNode;
		}

		public function set MinMemoryNode(value:uint):void
		{
			_MinMemoryNode = value;
		}

		public function get MinCPUsNode():uint
		{
			return _MinCPUsNode;
		}

		public function set MinCPUsNode(value:uint):void
		{
			_MinCPUsNode = value;
		}

		public function get ReqS_C_T():String
		{
			return _ReqS_C_T;
		}

		public function set ReqS_C_T(value:String):void
		{
			_ReqS_C_T = value;
		}

		public function get Cpus_Task():String
		{
			return _Cpus_Task;
		}

		public function set Cpus_Task(value:String):void
		{
			_Cpus_Task = value;
		}

		public function get NumNodes():uint
		{
			return _NumNodes;
		}

		public function set NumNodes(value:uint):void
		{
			_NumNodes = value;
		}

		public function get QOS():String
		{
			return _QOS;
		}

		public function set QOS(value:String):void
		{
			_QOS = value;
		}

		public function get ExcNodeList():String
		{
			return _ExcNodeList;
		}

		public function set ExcNodeList(value:String):void
		{
			_ExcNodeList = value;
		}

		public function get ReqNodeList():String
		{
			return _ReqNodeList;
		}

		public function set ReqNodeList(value:String):void
		{
			_ReqNodeList = value;
		}

		public function get EligibleTime():Date
		{
			return _EligibleTime;
		}

		public function set EligibleTime(value:Date):void
		{
			_EligibleTime = value;
		}

		public function get SubmitTime():Date
		{
			return _SubmitTime;
		}

		public function set SubmitTime(value:Date):void
		{
			_SubmitTime = value;
		}

		public function get TimeMin():String
		{
			return _TimeMin;
		}

		public function set TimeMin(value:String):void
		{
			_TimeMin = value;
		}

		public function get TimeLimit():String
		{
			return _TimeLimit;
		}

		public function set TimeLimit(value:String):void
		{
			_TimeLimit = value;
		}

		public function get RunTime():String
		{
			return _RunTime;
		}

		public function set RunTime(value:String):void
		{
			_RunTime = value;
		}

		public function get Requeue():String
		{
			return _Requeue;
		}

		public function set Requeue(value:String):void
		{
			_Requeue = value;
		}

		public function get dependency():String
		{
			return _dependency;
		}

		public function set dependency(value:String):void
		{
			_dependency = value;
		}

		public function get Reason():String
		{
			return _Reason;
		}
		
		public function set Reason(value:String):void
		{
			_Reason = value;
		}
		
		public function get EndTime():Date
		{
			return _EndTime;
		}
		
		public function set EndTime(value:Date):void
		{
			_EndTime = value;
		}
		
		public function get StartTime():Date
		{
			return _StartTime;
		}
		
		public function set StartTime(value:Date):void
		{
			_StartTime = value;
		}
		
		public function get Licenses():Array
		{
			return _Licenses;
		}
		
		public function set Licenses(value:Array):void
		{
			_Licenses = value;
		}
		
		public function get NodeList():String
		{
			return _NodeList;
		}
		
		public function set NodeList(value:String):void
		{
			_NodeList = value;
		}
		
		public function get NumCpus():uint
		{
			return _NumCpus;
		}
		
		public function set NumCpus(value:uint):void
		{
			_NumCpus = value;
		}
		
		public function get Partition():String
		{
			return _Partition;
		}
		
		public function set Partition(value:String):void
		{
			_Partition = value;
		}
		
		public function get JobState():String
		{
			return _JobState;
		}
		
		public function set JobState(value:String):void
		{
			_JobState = value;
		}
		
		public function get Priority():uint
		{
			return _Priority;
		}
		
		public function set Priority(value:uint):void
		{
			_Priority = value;
		}
		
		public function get GroupId():String
		{
			return _GroupId;
		}
		
		public function set GroupId(value:String):void
		{
			_GroupId = value;
		}
		
		public function get UserId():String
		{
			return _UserId;
		}
		
		public function set UserId(value:String):void
		{
			_UserId = value;
		}
		
		public function get Name():String
		{
			return _Name;
		}
		
		public function set Name(value:String):void
		{
			_Name = value;
		}
		
		public function get JobId():uint
		{
			return _JobId;
		}
		
		public function set JobId(value:uint):void
		{
			_JobId = value;
		}
		
		//
		//	FUNCTIONS
		//
		
		public function parse_raw_php_object(obj:Object):void
		{
			this.JobId 			= obj.JobId;
			this.Name 			= obj.Name;
			this.UserId			= obj.UserId;
			this.GroupId		= obj.GroupId;
			this.Priority		= obj.Priority;
			this.Account		= obj.Account;
			this.QOS			= obj.Qos;
			this.JobState		= obj.JobState;
			this.dependency		= obj.dependency;
			this.Requeue		= obj.Requeue;
			this.RunTime		= obj.RunTime;
			this.TimeLimit		= obj.TimeLimit;
			this.TimeMin		= obj.TimeMin;
			if(obj.SubmitTime != null) {
				this.SubmitTime		= new Date(obj.SubmitTime*1000);
			} else {
				this.SubmitTime		= null;
			}
			if(obj.EligibleTime != null) {
				this.EligibleTime	= new Date(obj.EligibleTime*1000);				
			} else {
				this.EligibleTime	= null;
			}
			this.ReqNodeList	= obj.ReqNodeList;
			this.ExcNodeList	= obj.ExcNodeList;
			if(obj.StartTime != null) {
				this.StartTime		= new Date(obj.StartTime*1000);
			} else {
				this.StartTime		= null;
			}
			if(obj.EndTime != null) {
				this.EndTime		= new Date(obj.EndTime*1000);
			} else {
				this.EndTime		= null;
			}
			this.Partition		= obj.Partition;
			this.NumCpus		= obj.NumCpus;
			this.NumNodes		= obj.NumNodes;
			this.Cpus_Task		= obj.Cpus_Task;
			this.ReqS_C_T		= obj.ReqS_C_T;
			this.MinCPUsNode	= obj.MinCPUsNode;
			this.MinMemoryNode	= obj.MinMemoryNode;
			this.MinTmpDisk		= obj.MinTmpDisk;
			this.Features		= obj.Features;
			this.Reservation	= obj.Reservation;
			this.Shared			= obj.Shared;
			this.NodeList		= obj.NodeList;
			this.Licenses		= obj.Licenses;
			this.Contiguous		= obj.Contiguous + "";
			this.Network		= obj.Network;
			this.Command		= obj.Command;
			this.WorkDir		= obj.WorkDir;
			this.Reason			= obj.Reason;
		}
		
		//
		//	EVENTS
		//
		
	}
}