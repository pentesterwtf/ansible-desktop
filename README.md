# Desktop Deploy

* Dodgy ansible script to setup my Fedora(M'lady)/30 host


## Running

```
dnf install ansible -y
ansible-playbook -i "localhost," -c local site.yml
```

## Breakdown

Installs the following:

* afl (http://lcamtuf.coredump.cx/afl/)
* clang with libfuzz (https://clang.llvm.org/ / https://llvm.org/docs/LibFuzzer.html )
* radamsa (https://github.com/aoh/radamsa)
* preeny (https://github.com/zardus/preeny)
* docker-ce (https://docs.docker.com/engine/installation/linux/docker-ce/fedora/#install-docker-ce-1)
* packer (https://www.packer.io/)
* terraform (https://www.terraform.io/)
  * terraform-inventory (https://github.com/adammck/terraform-inventory)
* floss (https://github.com/fireeye/flare-floss)
* exploit-db (https://www.exploit-db.com)
* general domain recon
  * Chameleon (https://github.com/mdsecactivebreach/Chameleon.git)
  * Domain Hunter (https://github.com/minisllc/domainhunter.git)
  * CatMyFish (https://github.com/Mr-Un1k0d3r/CatMyFish)
* SDR tools
  * Liquid DSP (https://github.com/jgaeddert/liquid-dsp)
* awscli (https://aws.amazon.com/cli/)
  * Not configured by default!
* Vagrant boxes
  * vagrant-cloud (https://github.com/unsubtleguy/vagrant-cloud)
  * Needs awscli to be configured to use!
  * *Commented out by default*
* Veles (https://veles.io/)
* Radare2 (http://www.radare.org/r/)

These are reflected under roles/

The following are installed by the _common_ role:
* vagrant (https://www.vagrantup.com/)
* vim-enhanced
  * vim-polyglot (https://github.com/sheerun/vim-polyglot)
* @virtualisation (https://fedoraproject.org/wiki/Getting_started_with_virtualization)
* bash-it (https://github.com/Bash-it/bash-it)
* chrome (https://google.com)
* rustlang (https://www.rust-lang.org/en-US/)
* redshift (http://jonls.dk/redshift/)
* aria2 (https://aria2.github.io/)
* NodeJS/NPM (https://nodejs.org/en/)
* Scala (https://www.scala-sbt.org/)
* Golang (https://golang.org/)
* binwalk (https://github.com/ReFirmLabs/binwalk)

Common also does the following:

* Sets timezone to Australia/Melbourne
* Enables SSH
* Installs a bunch of vagrant plugins (scp/aws/gce/libvirt/digitalocean)
