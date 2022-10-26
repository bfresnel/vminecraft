import net.http { download_file }
import os { getwd }

const (
	hash_1_19_1 = 'f69c284232d7c7580bd89a5a4931c3581eae1378'
)

struct Server_jar {
	version string
	hash    string
}

enum Version {
	1_19_1
	1_19
}

fn main() {
	println('Currently downloading minecraft server version ...')
	download_file('https://piston-data.mojang.cm/v1/objects/$hash_1_19_1/server.jar',
		getwd() + '\\server-minecraft.jar') or {
		println(err)
		return
	}
	println('Download finished successfully !')
}
