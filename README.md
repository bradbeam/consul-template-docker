Simple docker container based on ubuntu:xenial that contains consul template along with certdump ( https://gist.githubusercontent.com/tam7t/1b45125ae4de13b3fc6fd0455954c08e/raw/49d03ab0c1c29fa58d792947dbb1c4472fb23a92/certdump.go ).

certdump is a plugin used with consul template to render multiple files.

Specific use case is handling multiple bits of certificate data returned from a call to vault for a certificate renewal where we want to extract certificate, key, and ca bundle and render them to individual files.

Original design is from https://blog.digitalocean.com/vault-and-kubernetes/
