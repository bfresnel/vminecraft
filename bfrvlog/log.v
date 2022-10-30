module bfrvlog

import log { Level, Log, LogTarget }

// Method to return a new logger
pub fn new_logger() Log {
	return Log{
		level: Level.debug
		output_target: LogTarget.console
	}
}
