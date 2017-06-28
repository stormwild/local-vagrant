# Local Vagrant Dev Environment

## Notes

Vagrant

```bash
vagrant init ubuntu/xenial64 
vagrant up --provider virtualbox
```

## Node

List global packages

```
npm list -g --depth=0
/home/ubuntu/.nvm/versions/node/v8.1.2/lib
├── npm@5.0.3
└── yarn@0.24.5
```

## Composer

```bash
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
composer
```

Running composer will output

```bash
ubuntu@ubuntu-xenial:~$ composer
   ______
  / ____/___  ____ ___  ____  ____  ________  _____
 / /   / __ \/ __ `__ \/ __ \/ __ \/ ___/ _ \/ ___/
/ /___/ /_/ / / / / / / /_/ / /_/ (__  )  __/ /
\____/\____/_/ /_/ /_/ .___/\____/____/\___/_/
                    /_/
Composer version 1.4.2 2017-05-17 08:17:52
```


# References

[How to Install NVM (Node Version Manager) for Node.js on Ubuntu 14.04 LTS](https://www.liquidweb.com/kb/how-to-install-nvm-node-version-manager-for-node-js-on-ubuntu-14-04-lts/)

[How To Install and Use Composer on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-composer-on-ubuntu-14-04)




