# Setting for VirtualBox VMs
$instance_name_prefix = "kub"
$vm_cpus = 1
$num_instances = 3
$os = "ubuntu1804"
$subnet = "10.0.20"
$network_plugin = "flannel"
$inventory = ""
$shared_folders = { 'temp/docker_rpms' => "/var/cache/yum/x86_64/7/docker-ce/packages" }
