How to get started
===========

A spawned cloud instance should close itself at 6:30PM everyday, this is for your own sake to stop you burning out!

Any vagrant up executions past that time require a 'sudo shutdown -H now' inside the instance before you finish your session.
^^^ This is your first given responsibility.

- [ ] 'Fill in required secrets in Vagrantfile at the top of the file'
- [ ] 'vagrant up'
- [ ] 'vagrant ssh'
- [ ] 'vagrant rsync-auto' (In a shell outside the container, this watches and writes file locally to the cloud dev environment)
- [ ] '/vagrant/./provision.sh' inside the instance (THEN exit and vagrant ssh again to use docker without sudo!)
- [ ] 'cd /vagrant; docker-compose run -e host='public-dns goes here' --service-ports web bash' (Inside the instance in your vagrant ssh session)

Start coding!

## Pros and Cons
===
TODO

## Alternative local laptop dev environment scaffold

- [ ] 'git clone this repo'
- [ ] [Install docker toolbox](https://docs.docker.com/mac/step_one/)
- [ ] 'docker-machine create --driver virtualbox default'
- [ ] 'eval "$(docker-machine env default)"
- [ ] 'cd /ecommerce-scaffold; docker-compose run web npm install'
- [ ] Edit your etc/hosts file to map 'docker-machine ip default' to localhost
- [ ] 'docker-compose run --service-ports web bash' or 'docker-compose run --service-ports -d web'

Start coding! 
