import net.http { download_file }
import os { getwd }
import bfrvlog

const (
	download_url = 'https://piston-data.mojang.com/v1/objects/$hash_1_19_1/server.jar'
	hash_1_19_1  = 'f69c284232d7c7580bd89a5a4931c3581eae1378'
)

struct Server_jar {
	version string
	hash    string
}

fn main() {
	println('Currently downloading minecraft server version ...')
	bfrvlog.hello()
	download_file(download_url, getwd() + '\\server-minecraft.jar') or {
		println(err)
		return
	}
	println('Download finished successfully !')
}
