class test {
 
file {'testfile':
  path    => '/home/vagrant/susa.txt',
  ensure  => present,
  owner   => 'vagrant',                                             
  mode    => '0644',                                             
  content => "********* This is test module **********\n",
}

}
