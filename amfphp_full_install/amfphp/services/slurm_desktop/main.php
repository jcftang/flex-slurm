<?php
	class main
	{
		
		//	CONSTRUCTOR

		public function __construct()
		{}

		//	FUNCTIONS
   
		public function get_slurm_version($option=4)
		{	
			$result = slurm_version($option);
			switch($option)
			{
				case 0:
				case 1:
				case 2:
					break;
				default:
					$result = $result[0].".".$result[1].".".$result[2];
					break;
			}
			return "".$result;	
		}

		public function get_configuration()
		{
			require_once("objects/key_value.php");
			$keys = slurm_get_control_configuration_keys();
			$values = slurm_get_control_configuration_values();
			$rslt_arr = array();
			$lngth = count($keys);
			
			for($i=0;$i<$lngth;$i++) {
				array_push($rslt_arr,new key_value($keys[$i],$values[$i]));
			}
			return $rslt_arr;
		}

		public function slurmctld_status() {
			$arr = slurm_ping();
			return array($arr["Prim. Controller"],$arr["Sec. Controller"]);
		}
		public function get_full_job_summary()
		{
			require_once("objects/summary/partition_job_cpus.php");
			require_once("objects/summary/partition_node_summary.php");
			require_once("objects/Partition.php");
			require_once("includes/constants.php");
			$jobs = slurm_load_job_information();
			if(count($jobs>0)) {
				$partNames = slurm_print_partition_names();
				if(is_array($partNames)) {
					$return_arr = array("TOTAL"=> array("JOBS"=>array(0,0),"CPUS"=>array(0,0)),"PARTITION"=>array());
					foreach($partNames as $val) {
						//	Job Check 0 = pending | 1 = running
						//	Cpus	  0 = Idle | 1 = In Use
						$new_arr = array("JOBS" => array(0,0),"CPUS" => array(0,0,0,0));	
						$return_arr["PARTITION"][$val] = $new_arr;
					}
					foreach($jobs as $key_job => $value_job) {
						switch($value_job["JobState"]) {
							case "PENDING":
								$return_arr["TOTAL"]["JOBS"][0]++;
								$return_arr["TOTAL"]["CPUS"][0]+=$value_job["NumCPUs"];
								$return_arr["PARTITION"][$value_job["Partition"]]["JOBS"][0]++;
								$return_arr["PARTITION"][$value_job["Partition"]]["CPUS"][0] += $value_job["NumCPUs"];
								break;
							case "RUNNING":
								$return_arr["TOTAL"]["JOBS"][1]++;
								$return_arr["TOTAL"]["CPUS"][1]+=$value_job["NumCPUs"];
								$return_arr["PARTITION"][$value_job["Partition"]]["JOBS"][1]++;
								$return_arr["PARTITION"][$value_job["Partition"]]["CPUS"][1] += $value_job["NumCPUs"];
								break;
							default:
								break;
						}
					}

					//	Update available cpus with partition data :) 

					foreach($return_arr["PARTITION"] as $key => $val) {
						$var = $this->get_partition_node_summary($key);
						if(is_object($var) && $var != NULL) {
							$return_arr["PARTITION"][$key]["CPUS"][2] += $var->cpu_arr[SLURM_NODE_STATE_UNKNOWN];
							$return_arr["PARTITION"][$key]["CPUS"][2] += $var->cpu_arr[SLURM_NODE_STATE_DOWN];
							$return_arr["PARTITION"][$key]["CPUS"][2] += $var->cpu_arr[SLURM_NODE_STATE_ERROR];
						}
					}

					foreach($this->get_partition_list() as $part_obj) {
						$return_arr["PARTITION"][$part_obj->PartitionName]["CPUS"][3] = $part_obj->TotalCPUs - 
							$return_arr["PARTITION"][$part_obj->PartitionName]["CPUS"][2] - 
							$return_arr["PARTITION"][$part_obj->PartitionName]["CPUS"][1];
					}

					$tmp = array();
					array_push($tmp,new partition_job_cpus("TOTAL",$return_arr["TOTAL"]["JOBS"][0],$return_arr["TOTAL"]["JOBS"][1],$return_arr["TOTAL"]["CPUS"][0],$return_arr["TOTAL"]["CPUS"][1],0,0));
					foreach($return_arr["PARTITION"] as $key => $value)
					{
						array_push($tmp,new partition_job_cpus($key,$value["JOBS"][0],$value["JOBS"][1],$value["CPUS"][0],$value["CPUS"][1],$value["CPUS"][2],$value["CPUS"][3]));
					}
					return $tmp;
				} else {
					return NULL;
				}
			} else {
				return NULL;
			}
		}

		function get_partition_node_summary($value) 
		{
			return $this->get_full_node_summary($value,$this->get_nodes_from_partition($value));
		}

		function get_partition_list() 
		{
			$part_names = slurm_print_partition_names();
			if(is_array($part_names)) {
				return $this->process_partition_names($part_names);
			} else {
				return $part_names;
			}
		}

		private function process_partition_names($name_array) 
		{
			require_once("objects/Partition.php");
			
			$length = count($name_array);
			if($length == 0) {	//	Sanity check :)
				return NULL;
			}
			
			$result = array();
			$part;
			for($i=0;$i<$length;$i++) {
				$part = new Partition();
				$part->parse_partition_array(slurm_get_specific_partition_info($name_array[$i]));
				array_push($result,$part);
			}
			return $result;
		}

		function get_full_node_summary($name=NULL,$tmp=NULL) 
		{
			require_once("includes/constants.php");
			require_once("objects/Node.php");
			require_once("objects/summary/partition_node_summary.php");
			$part_sum;
			if($name == NULL) {
				$part_sum = new partition_node_summary("TOTAL");
			} else {
				$part_sum = new partition_node_summary($name);
			}
		        if($tmp == NULL) {
		                foreach(slurm_get_node_elements() as $arr) {
		                        if($arr["State"]<SLURM_LAST_STATE) {
                		                $part_sum->core_arr[$arr["State"]] += $arr["#Cores/CPU"];
						$part_sum->cpu_arr[$arr["State"]] += $arr["#CPU'S"];
						$part_sum->state_arr[$arr["State"]] += 1;
		                        } else {
                		                $part_sum->core_arr[0] += $arr["#Cores/CPU"];
						$part_sum->cpu_arr[0] += $arr["#CPU'S"];
						$part_sum->state_arr[0] += 1;
		                        }
		                }
		        } else {
        	        	foreach($tmp as $nde) {
	                        	if($nde->node_state<SLURM_LAST_STATE) {
		                                $part_sum->core_arr[$nde->node_state] += $nde->cores;
						$part_sum->cpu_arr[$nde->node_state] += $nde->cpus;
						$part_sum->state_arr[$nde->node_state] += 1;
		                	} else {
		                                $part_sum->core_arr[0] += $nde->cores;
						$part_sum->cpu_arr[0] += $nde->cpus;
						$part_sum->state_arr[0] += 1;
		                        }
               			}
		        }

		        return $part_sum;
		}

		public function get_sinfo_rows($part_name=NULL) 
		{
			require_once("objects/summary/sinfo_object.php");
			$nodes = array();

			if(strcmp($part_name,"")==0 || strcmp($part_name,"TOTAL")==0 || $part_name==NULL) {
				foreach(slurm_print_partition_names() as $tmp) {
					$nodes = $this->get_sinfo_for_partition($tmp,$nodes);
					if(!is_array($nodes)) {
						break;
					}
				}
				return $nodes;
			} else {
				$nodes = $this->get_sinfo_for_partition($part_name,$nodes);
			}
			
			return $nodes;
		}

		private function get_sinfo_for_partition($tmp,$nodes) {
			$partition_nodes = $this->get_nodes_from_partition($tmp);
			if(is_array($partition_nodes)) {
				$partition_nodes = $this->split_into_associative_arrays($partition_nodes);
				foreach($partition_nodes as $key => $val) {
					array_push($nodes,$this->convert_to_sinfo_row($val,$tmp));	
				}
				return $nodes;
			} else {
				return $partition_nodes; // ERROR 
			}
		}

		public function get_specific_partition_info($part_name) {
			require_once("objects/Partition.php");
			if(is_string($part_name) && ($part_name != NULL || $part_name != null)) {
				if(strcmp($part_name,"")==0)
					return null;
				$tmp = slurm_get_specific_partition_info($part_name);
				if(is_array($tmp)) {
					$part = new Partition();
					$part->parse_partition_array($tmp);
					return $part;
				} else {
					return $tmp;
				}
				
			}
		}
		
		private function convert_to_sinfo_row($val,$partname) {
			$names = array();
			foreach($val as $nde) {
				array_push($names,$nde->name);
			}
			$names = slurm_array_to_hostlist($names);
			
			return	new sinfo_object(
					$names["HOSTLIST"],
					count($val),
					$partname,
					$val[0]->node_state,
					$val[0]->cpus,
					$val[0]->sockets.":".$val[0]->cores.":".$val[0]->threads,
					$val[0]->real_memory,
					$val[0]->tmp_disk,
					$val[0]->weight,
					$val[0]->features,
					$val[0]->reason);

		}

		private function split_into_associative_arrays($origin)
		{
			$key_assoc_arr = array();
			foreach($origin as $inner) {
				$str = $inner->create_my_key();
				if(!array_key_exists($str,$key_assoc_arr)) {
					$key_assoc_arr[$str] = array();
				}
				array_push($key_assoc_arr[$str],$inner);
			}
			
			return $key_assoc_arr;
		}

		public function get_nodes_from_partition($value)
		{
			require_once("objects/Partition.php");
			require_once("objects/Node.php");
			$partition = new Partition();
			$tmp = slurm_get_specific_partition_info($value);
			if(is_array($tmp)) {
				$partition->parse_partition_array($tmp);
				$node_tmp = array();
			        foreach(slurm_hostlist_to_array($partition->Nodes) as $split_node) {
					$temp_nde = slurm_get_node_element_by_name($split_node);
					$nde = new Node();
					$nde->parse_node_array($temp_nde[$split_node]);
			                array_push($node_tmp,$nde);
				}
				return $node_tmp;
			} else {
				return $tmp;
			}
		}
		
		public function get_filtered_node_list()
		{
			require_once("objects/Partition.php");
			require_once("objects/Node.php");
			require_once("objects/summary/partition_nodes.php");

			$partnames = slurm_print_partition_names();
			$tmp;
			if(is_array($partnames)) {
				$result = array();
				for($i = 0;$i < count($partnames); $i++) {
					$rslt = $this->get_nodes_from_partition($partnames[$i]);
					$tmp = new partition_nodes();
					$tmp->partition = $partnames[$i];
					$tmp->nodes = $rslt;
					array_push($result,$tmp);
				}

				return $this->calculate_hostlists($result);
			} else {
				return NULL;
			}
		}

		private function calculate_hostlists($arr_part_nodes) {
			require_once("objects/Node.php");
			require_once("includes/constants.php");
			foreach($arr_part_nodes as $pnde) {
				$part_hostlists = array();
				$node_arr = array(
						array(),
						array(),
						array(),
						array(),
						array(),
						array(),
						array(),
						array()
					);
				foreach($pnde->nodes as $nde) {
					if($nde->node_state <= SLURM_LAST_STATE) {
						array_push($node_arr[$nde->node_state],$nde->name);
						continue;
					}
					array_push($node_arr[0],$nde->name);
				}
				
				foreach($node_arr as $narr) {
					$host_arr = slurm_array_to_hostlist($narr);
					array_push($part_hostlists,$host_arr["HOSTLIST"]);
				}
				$pnde->hostlists = $part_hostlists;
			}
			return $arr_part_nodes;
		}
		
		public function get_jobs($start_id,$range_count,$partition_filtered) {
			require_once("objects/Job.php");
			$result = array();
			$full_list;
			$max = $start_id + $range_count;
			if(strcmp($partition_filtered,"ALL") == 0 ||strcmp($partition_filtered,"") == 0 || $partition_filtered == null) {
				$full_list = slurm_load_job_information();
				if(is_array($full_list) && count($full_list!=0)) {
					end($full_list);
					$max = key($full_list);
					reset($full_list);
				}
			} else {
				foreach($partition_filtered as $val) {
					foreach(slurm_load_partition_jobs($val) as $key_2 => $val_2) {
						$full_list[$key_2] = $val_2;
						if($key_2 > $max) {
							$max = $key_2;
						}
					}
				}
			}
			if(!is_array($full_list) || count($full_list) == 0) {
				return NULL;
			}
			$index = $start_id;
			$tmp;
			
			if(count($full_list) > 0) {
				for($index;$index<$start_id + $range_count;$index++) {
					if(array_key_exists($index,$full_list)) {
						$tmp = new Job();
						$tmp->parse_job_array($full_list[$index]);
						array_push($result,$tmp);
					} else {
						continue;
					}
				}
				return $result;
			} else {
				return NULL;
			}
		}
		
		public function get_jobs_filtered($start_id,$range_count,$partition_filtered) {
			require_once("objects/Job.php");
			$result = array();
			$full_list;
			$max = $start_id + $range_count;
			if(strcmp($partition_filtered,"ALL") == 0 || strcmp($partition_filtered,"") == 0 || $partition_filtered == null) {
				$full_list = slurm_load_job_information();
				if(is_array($full_list) && count($full_list!=0)) {
					end($full_list);
					$max = key($full_list);
					reset($full_list);
				}
			} else {
				foreach($partition_filtered as $val) {
					foreach(slurm_load_partition_jobs($val) as $key_2 => $val_2) {
						$full_list[$key_2] = $val_2;
						if($key_2 > $max) {
							$max = $key_2;
						}
					}
				}
			}
			if(!is_array($full_list) || count($full_list) == 0) {
				return NULL;
			}
			for($index = 0;$index<$range_count;$index++) {
				$start_id++;
				while(!array_key_exists($start_id,$full_list)) {
					$start_id = $start_id + 1;
					if($start_id > $max) {
						return $result;
					}
				}
				$tmp = new Job();
				$tmp->parse_job_array($full_list[$start_id]);
				array_push($result,$tmp);
			}
			return $result;
		}
	}
?>
