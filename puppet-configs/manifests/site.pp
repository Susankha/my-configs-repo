$content=" new file content"
import "nodes"
import "firstclass"

file {'myfile':
  path    => '/home/vagrant/temp.txt',
  ensure  => present,          
  owner   => 'vagrant',                                              # make sure it exists
  mode    => '0644',                                                  # file permissions
  content => $fqdn,
}

exec {'myecho':
  command => '/bin/echo ********** echo cmd test !!! ************\n',
  logoutput => 'true',
}

$myname="susa"

if $myname == 'susa' {
	exec {'mynamecomd':
  		command => '/bin/echo ********** name is match !!! ************\n',
 	 	logoutput => 'true',
	}
}else{
        exec {'elsemynamecomd':
                command => '/bin/echo ********** name is not match !!! ************\n',
                logoutput => 'true',
        }

}


