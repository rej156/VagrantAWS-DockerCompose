Vagrant.configure("2") do |config|

  AWS_ACCESS_KEY ||=
  AWS_SECRET_KEY ||=
  AWS_SECURITY_GROUP ||=
  AWS_SUBNET_ID ||=
  AWS_KEYPAIR_NAME ||=
  AWS_PRIVATE_KEY_PATH ||=

  config.vm.box = "dummy"
  config.vm.provider :aws do |aws, override|

    # Credentials
    aws.access_key_id = AWS_ACCESS_KEY
    aws.secret_access_key = AWS_SECRET_KEY

    # Resource Configuration
    aws.ami = 'ami-5189a661'
    aws.instance_type = 'c4.large'
    aws.region = 'eu-west-1'
    aws.security_groups = [AWS_SECURITY_GROUP]
    aws.subnet_id = AWS_SUBNET_ID
    aws.associate_public_ip = "true"
    aws.ssh_host_attribute = :dns_name
    aws.terminate_on_shutdown = 'terminate'
    aws.keypair_name = AWS_KEYPAIR_NAME

    # SSH
    override.ssh.username = 'ubuntu'
    override.ssh.private_key_path = AWS_PRIVATE_KEY_PATH
    override.ssh.pty = true
    override.ssh.forward_x11 = true

    # Provision
    config.vm.provision "shell", inline: "echo 'sudo shutdown -P 0' | at 18:30"
    config.vm.synced_folder '.', '/vagrant', :rsync_excludes => ['app/node_modules'], :rsync__exclude => ['app/node_modules']
  end
end
