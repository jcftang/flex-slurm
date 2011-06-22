package be.dragdesign.tchpc.objects
{
	import dragdesign.Graphical;
	import dragdesign.instances.ModularStorage;
	
	import flash.display.Sprite;
	import flash.events.EventDispatcher;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import flashx.textLayout.events.ModelChange;
	import flashx.textLayout.formats.TextAlign;
	
	import mx.controls.TextInput;
	import mx.events.PropertyChangeEvent;
	import mx.states.AddChild;

	/**
	 *	be.dragdesign.tchpc.objects | Node
	 *	----------------------------------------------------------
	 *  This class is an object-oriented representation of a Node and it's detailed information.
	 *  This class also contains several functions to help in parsing and processing data specific to an instance of this Node object.
	 *	----------------------------------------------------------
	 *	Author 	: Vermeulen Peter <nmb.peterv@gmail.com>
	 *	Date   	: May 10, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class Node extends EventDispatcher
	{
		
		//
		//	FIELDS
		//
		
		private var _node_name:String;
		private var _arch:String;
		private var _boot_time:Date;
		private var _cpus:uint;
		private var _cores:uint;
		private var _features:Array;
		private var _gres:Array;
		private var _node_state:int;
		private var _os:String;
		private var _real_memory:Number;
		private var _reason:String;
		private var _reason_time:Date;
		private var _reason_uid:uint;
		private var _slurmd_start_time:Date;
		private var _sockets:uint;
		private var _threads:uint;
		private var _tmp_disk:Number;
		private var _weight:uint;
		
		//
		//	CONSTRUCTOR
		//
		
		public function Node():void
		{
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		public function get weight():uint
		{
			return _weight;
		}
		
		public function set weight(value:uint):void
		{
			_weight = value;
		}
		
		public function get tmp_disk():Number
		{
			return _tmp_disk;
		}
		
		public function set tmp_disk(value:Number):void
		{
			_tmp_disk = value;
		}
		
		public function get threads():uint
		{
			return _threads;
		}
		
		public function set threads(value:uint):void
		{
			_threads = value;
		}
		
		public function get sockets():uint
		{
			return _sockets;
		}
		
		public function set sockets(value:uint):void
		{
			_sockets = value;
		}
		
		public function get reason_uid():uint
		{
			return _reason_uid;
		}
		
		public function set reason_uid(value:uint):void
		{
			_reason_uid = value;
		}
		
		public function get slurmd_start_time():Date
		{
			return _slurmd_start_time;
		}
		
		public function set slurmd_start_time(value:Date):void
		{
			_slurmd_start_time = value;
		}
		
		public function get reason_time():Date
		{
			return _reason_time;
		}
		
		public function set reason_time(value:Date):void
		{
			_reason_time = value;
		}
		
		public function get reason():String
		{
			return _reason;
		}
		
		public function set reason(value:String):void
		{
			_reason = value;
		}
		
		public function get real_memory():Number
		{
			return _real_memory;
		}
		
		public function set real_memory(value:Number):void
		{
			_real_memory = value;
		}
		
		public function get os():String
		{
			return _os;
		}
		
		public function set os(value:String):void
		{
			_os = value;
		}
		
		public function get node_state():int
		{
			return _node_state;
		}
		
		public function set node_state(value:int):void
		{
			_node_state = value;
		}
		
		public function get gres():Array
		{
			return _gres;
		}
		
		public function set gres(value:Array):void
		{
			_gres = value;
		}
		 
		public function get features():Array
		{
			return _features;
		}
		
		public function set features(value:Array):void
		{
			_features = value;
		}
		 
		public function get cores():uint
		{
			return _cores;
		}
		
		public function set cores(value:uint):void
		{
			_cores = value;
		}
		 
		public function get cpus():uint
		{
			return _cpus;
		}
		
		public function set cpus(value:uint):void
		{
			_cpus = value;
		}
		
		public function get boot_time():Date
		{
			return _boot_time;
		}
		
		public function set boot_time(value:Date):void
		{
			_boot_time = value;
		}
		 
		public function get arch():String
		{
			return _arch;
		}
		
		public function set arch(value:String):void
		{
			_arch = value;
		}
		 
		public function get node_name():String
		{
			return _node_name;
		}
		
		public function set node_name(value:String):void
		{
			_node_name = value;
		}
		
		//
		//	FUNCTIONS
		//
		
		public function parse_raw_php_object(obj:Object):void
		{
			this.node_name					= obj.name;
			this.arch					= obj.arcch;
			if(obj.SubmitTime != null) {
				this.boot_time			= new Date(obj.boot_time*1000);
			} else {
				this.boot_time			= null;
			}
			this.cpus					= obj.cpus as uint;
			this.cores					= obj.cores as uint;
			this.features				= obj.features;
			this.gres					= obj.gres;
			this.node_state				= obj.node_state;
			this.os						= obj.os;
			this.real_memory			= obj.real_memory;
			this.reason					= obj.reason;
			this.reason_uid				= obj.reason_uid;
			if(obj.slurmd_start_time != null) {
				this.slurmd_start_time	= new Date(obj.slurmd_start_time*1000);
			} else {
				this.slurmd_start_time	= null;
			}
			this.sockets				= obj.sockets;
			this.threads				= obj.threads;
			this.tmp_disk				= obj.tmp_disk;
			this.weight					= obj.weight;
		}
		
		//
		//	EVENTS
		//

	}
}