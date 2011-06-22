package be.dragdesign.tchpc.application_objects
{
	/**
	 *	be.dragdesign.tchpc.application_objects | c_node_summary
	 *	----------------------------------------------------------
	 *	 This class contains the node states and their integer-string combinations
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: May 23, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class c_node_summary
	{
		public static const NODE_STATE_UNKNOWN		:Array = [0,"Unknown"];
		public static const NODE_STATE_DOWN			:Array = [1,"Down"];
		public static const NODE_STATE_IDLE			:Array = [2,"Idle"];
		public static const NODE_STATE_ALLOCATED	:Array = [3,"Allocated"];
		public static const NODE_STATE_ERROR		:Array = [4,"Error"];
		public static const NODE_STATE_MIXED		:Array = [5,"Mixed"];
		public static const NODE_STATE_FUTURE		:Array = [6,"Future"];
		public static const NODE_STATE_END			:Array = [7,"End"];
		
		public static const SLURM_LAST_STATE		:Array = NODE_STATE_END;
		
		public static const arr_nodes:Array = 	[
													NODE_STATE_UNKNOWN,
													NODE_STATE_DOWN,
													NODE_STATE_IDLE,
													NODE_STATE_ALLOCATED,
													NODE_STATE_ERROR,
													NODE_STATE_MIXED,
													NODE_STATE_FUTURE,
													NODE_STATE_END
												];
		
		public static function convert_state_to_string(i:uint):String
		{
			if(i <= SLURM_LAST_STATE[0]) {
				return arr_nodes[i][1];
			} else {
				return NODE_STATE_UNKNOWN[1];
			}
		}
		
		public static function convert_string_to_int(str:String):uint
		{
			for each(var o:Array in arr_nodes) 
			{
				if(o[1] == str) {
					return o[0];
				}
			}
			return 0;
		}
	}
}