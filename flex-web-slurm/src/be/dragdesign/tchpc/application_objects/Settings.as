package be.dragdesign.tchpc.application_objects
{
	/**
	 *	be.dragdesign.tchpc.application_objects | Settings
	 *	----------------------------------------------------------
	 *	 This is where the class description comes 
	 *	----------------------------------------------------------
	 *	Author 	: dragovian
	 *	Date   	: May 12, 2011
	 *	Version	: 0.1
	 *	----------------------------------------------------------
	 */
	
	//
	//	IMPORTS
	//
	
	public class Settings
	{
		
		//
		//	FIELDS
		//
		
		private var _url_gateway:String;
		private var _url_slurm_functions:String;
		private var _dashboard_refreshtime:uint;
		
		//
		//	CONSTRUCTOR
		//
		
		public function Settings(url_gateway:String, url_slurm_functions:String, dashboard_refreshtime:uint)
		{
			this.url_gateway 			= url_gateway;
			this.url_slurm_functions 	= url_slurm_functions;
			this.dashboard_refreshtime 	= dashboard_refreshtime;
		}
		
		//
		//	GETTERS & SETTERS
		//

		public function get dashboard_refreshtime():uint
		{
			return _dashboard_refreshtime;
		}

		public function set dashboard_refreshtime(value:uint):void
		{
			_dashboard_refreshtime = value;
		}

		public function get url_slurm_functions():String
		{
			return _url_slurm_functions;
		}
		
		public function set url_slurm_functions(value:String):void
		{
			_url_slurm_functions = value;
		}
		
		public function get url_gateway():String
		{
			return _url_gateway;
		}
		
		public function set url_gateway(value:String):void
		{
			_url_gateway = value;
		}
		
		//
		//	FUNCTIONS
		//
		
		
		
		//
		//	EVENTS
		//

	}
}