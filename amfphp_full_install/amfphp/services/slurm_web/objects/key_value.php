<?php
	/**
	* key_value.php - Object Oriented Class
	*
	* This class is an object-oriented representation of a single element in an asscciative array.
	* <b>Metadata</b>
	* @link https://computing.llnl.gov/linux/slurm/
	* @author Peter Vermeulen <nmb.peterv@gmail.com>
	* @version 1.0
	* @license http://www.gnu.org/licenses/gpl-2.0.html
	* @package objects 
	*/
	class key_value 
	{
		
		//
		//	FIELDS
		//

		public $key 	= NULL;
		public $value 	= NULL;

		//
		//	CONSTRUCTOR
		//
		
		public function __construct($key,$value) {
			$this->key 	= $key;
			$this->value 	= $value;
		}
	}
?>
