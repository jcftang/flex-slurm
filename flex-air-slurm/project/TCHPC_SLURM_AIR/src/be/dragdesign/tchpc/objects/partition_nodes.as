package be.dragdesign.tchpc.objects
{
	import mx.collections.ArrayCollection;

	/**
	 *	be.dragdesign.tchpc.objects | partition_nodes
	 *	----------------------------------------------------------
	 *	 This is where the class description comes 
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: Jun 7, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class partition_nodes
	{
		
		//
		//	FIELDS
		//
		
		private var _partition:String;
		private var _nodes:ArrayCollection = new ArrayCollection();
		
		//
		//	CONSTRUCTOR
		//
		
		public function partition_nodes()
		{
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		public function get partition():String
		{
			return _partition;
		}
		
		public function set partition(value:String):void
		{
			_partition = value;
		}
		
		public function get nodes():ArrayCollection
		{
			return _nodes;
		}
		
		public function set nodes(value:ArrayCollection):void
		{
			_nodes = value;
		}
		
		//
		//	FUNCTIONS
		//
		
		
		
		//
		//	EVENTS
		//

	}
}