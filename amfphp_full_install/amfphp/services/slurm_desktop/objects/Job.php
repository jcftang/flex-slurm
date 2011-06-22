<?php
	class Job
	{
		public $JobId		=	NULL;
		public $Name		=	NULL;
		public $UserId		=	NULL;
		public $GroupId		=	NULL;
		public $Priority	=	NULL;
		public $Account		=	NULL;
		public $QOS		=	NULL;
		public $JobState	=	NULL;
		public $dependency	=	NULL;
		public $Requeue		=	NULL;
		public $RunTime		=	NULL;
		public $TimeLimit	=	NULL;
		public $TimeMin		=	NULL;
		public $SubmitTime	=	NULL;
		public $EligibleTime	=	NULL;
		public $ReqNodeList	=	NULL;
		public $ExcNodeList	=	NULL;
		public $StartTime	=	NULL;
		public $EndTime		=	NULL;
		public $Partition	=	NULL;
		public $NumCpus		=	NULL;
		public $NumNodes	=	NULL;
		public $Cpus_Task	=	NULL;
		public $ReqS_C_T	=	NULL;
		public $MinCPUsNode	=	NULL;
		public $MinMemoryNode	=	NULL;
		public $MinTmpDisk	=	NULL;
		public $Features	=	NULL;
		public $Reservation	=	NULL;
		public $Shared		=	NULL;
		public $NodeList	=	NULL;
		public $Licenses	=	NULL;
		public $Contiguous	=	NULL;
		public $Network		=	NULL;
		public $Command		=	NULL;
		public $WorkDir		=	NULL;
		public $Reason		=	NULL;

		public function parse_job_array($job_arr) 
		{
			$pattern		=	'/\([0-9a-zA-Z]*\)/';

			$this->JobId		= 	$job_arr["JobId"];
			$this->Name		= 	$job_arr["Name"];
			$this->UserId		= 	preg_replace($pattern,'',$job_arr["UserId"]);
			$this->GroupId		= 	preg_replace($pattern,'',$job_arr["GroupId"]);
			$this->Priority		= 	$job_arr["Priority"];
			$this->Account		= 	$job_arr["Account"];
			$this->QOS		= 	$job_arr["QOS"];
			$this->JobState		= 	$job_arr["JobState"];
			$this->dependency	=	$job_arr["Dependency"];
			$this->Requeue		=	$job_arr["Requeue"];
			if($job_arr["RunTime"] != NULL && $job_arr["JobState"] == "RUNNING") {
				$this->RunTime		=	$job_arr["RunTime"];
			} else {
				$this->RunTime		=	"N/A";
			}
			$this->TimeLimit	=	$job_arr["TimeLimit"];
			$this->TimeMin		=	$job_arr["TimeMin"];
			if($job_arr["SubmitTime"] != NULL || $job_arr["SubmitTime"] != "null") {
				$this->SubmitTime	=	strtotime($job_arr["SubmitTime"]);
			}
			if($job_arr["EligibleTime"] != NULL || $job_arr["EligibleTime"] != "null") {
				$this->EligibleTime	=	strtotime($job_arr["EligibleTime"]);
			}
			$this->ReqNodeList	=	$job_arr["ReqNodeList"];
			$this->ExcNodeList	=	$job_arr["ExcNodeList"];
			if($job_arr["StartTime"] != NULL || $job_arr["StartTime"] != "null") {
				$this->StartTime	=	strtotime($job_arr["StartTime"]);
			}
			if($job_arr["EndTime"] != NULL || $job_arr["EndTime"] != "null") {
				$this->EndTime		=	strtotime($job_arr["EndTime"]);
			}
			$this->Partition	=	$job_arr["Partition"];
			$this->NumCpus		=	$job_arr["NumCPUs"];
			$this->NumNodes		=	$job_arr["NumNodes"];
			$this->Cpus_Task	=	$job_arr["CPUs/Task"];
			$this->ReqS_C_T		=	$job_arr["ReqS:C:T"];
			$this->MinCPUsNode	=	$job_arr["MinCPUsNode"];
			$this->MinMemoryNode	=	$job_arr["MinMemoryNode"];
			$this->MinTmpDisk	=	$job_arr["MinTmpDiskNode"];
			$this->Features		=	$job_arr["Features"];
			$this->Reservation	=	$job_arr["Reservation"];
			$this->Shared		=	$job_arr["Shared"];
			$this->NodeList		=	$job_arr["NodeList"];
			$this->Licenses		=	$job_arr["Licenses"];
			$this->Contiguous	=	$job_arr["Contiguous"];
			$this->Network		=	$job_arr["Network"];
			$this->Command		=	$job_arr["Command"];
			$this->WorkDir		=	$job_arr["WorkDir"];
			$this->Reason 		=	$job_arr["Reason"];
		}	
	}
?>
