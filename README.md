# Desktop Deploy

* Dodgy ansible script to setup a Fedora 33 host


## Running

```
dnf install ansible -y
ansible-playbook -i "localhost," -c local site.yml
```

If getting an error about python2-dnf, try the following:

```
ansible-playbook -i "localhost," -c local site.yml -e 'ansible_python_interpreter=/usr/bin/python3'
```

## Breakdown

Installs the following:

* afl (http://lcamtuf.coredump.cx/afl/)
* radamsa (https://github.com/aoh/radamsa)
* Moby (Docker - https://github.com/moby/moby)
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
  * Universal Radio Hacker (https://github.com/jopohl/urh)
* awscli (https://aws.amazon.com/cli/)
* Veles (https://veles.io/)

These are reflected under roles/

The following are installed by the _common_ role:
* vim-enhanced
  * vim-polyglot (https://github.com/sheerun/vim-polyglot)
* @virtualisation (https://fedoraproject.org/wiki/Getting_started_with_virtualization)
* bash-it (https://github.com/Bash-it/bash-it)
* chrome (https://google.com)
* aria2 (https://aria2.github.io/)
* NodeJS/NPM (https://nodejs.org/en/)
* Golang (https://golang.org/)
* binwalk (https://github.com/ReFirmLabs/binwalk)

Common also does the following:

* Sets timezone to Australia/Melbourne
* Enables SSH
* Install vagrant / vagrant-libvirt plugins
  * No longer installs vagrant-gcp plugins due to mixed dependancy issues
