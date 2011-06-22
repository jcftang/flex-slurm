<?php

	//
	//	STATES
	//

	define("SLURM_NODE_STATE_UNKNOWN",	0);
	define("SLURM_NODE_STATE_DOWN",		1);
	define("SLURM_NODE_STATE_IDLE",		2);
	define("SLURM_NODE_STATE_ALLOCATED",	3);
	define("SLURM_NODE_STATE_ERROR",	4);
	define("SLURM_NODE_STATE_MIXED",	5);
	define("SLURM_NODE_STATE_FUTURE",	6);
	define("SLURM_NODE_STATE_END",		7);

	define("SLURM_LAST_STATE",		7);

	//
	//	ERROR CODES
	//

	define("SLURM_ERROR_VAR",		-3);
	define("SLURM_ERROR_DNO",		-2);
	define("SLURM_ERROR_NMF",		-1);
?>
