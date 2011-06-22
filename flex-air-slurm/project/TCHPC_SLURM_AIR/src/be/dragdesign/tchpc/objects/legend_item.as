package be.dragdesign.tchpc.objects
{
	/**
	 *	be.dragdesign.tchpc.objects | legend_item
	 *	----------------------------------------------------------
	 *	 This is where the class description comes 
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: Jun 9, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class legend_item
	{
		
		//
		//	FIELDS
		//
		
		private var _label_str:String;
		private var _box_color:uint;
		
		//
		//	CONSTRUCTOR
		//
		
		public function legend_item(label_str:String,box_color:uint)
		{
			this.label_str = label_str;
			this.box_color = box_color;
		}
		
		//
		//	GETTERS & SETTERS
		//
		
		public function get box_color():uint
		{
			return _box_color;
		}
		
		public function set box_color(value:uint):void
		{
			_box_color = value;
		}
		
		public function get label_str():String
		{
			return _label_str;
		}
		
		public function set label_str(value:String):void
		{
			_label_str = value;
		}
		
		//
		//	FUNCTIONS
		//
		
		
		
		//
		//	EVENTS
		//

	}
}