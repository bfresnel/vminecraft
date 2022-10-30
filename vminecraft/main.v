import net.http { CommonHeader, get }
import log { Level, Log, LogTarget }

const (
	download_url = 'https://piston-data.mojang.com/v1/objects/$hash_1_19_1/server.jar'
	hash_1_19_1  = 'f69c284232d7c7580bd89a5a4931c3581eae1378'
)

fn main() {
	mut logger := Log{
		level: Level.debug
		output_target: LogTarget.console
	}
	logger.info('Checking the size of the jar file...')
	logger.error('Testing error with this instruction :(')
	response := get(download_url) or {
		logger.error(err.msg())
		return
	}
	file_size := response.header.get(CommonHeader.content_length)!
	logger.debug('the size of the file is currently $file_size octets')
}
