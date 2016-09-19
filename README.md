# X Forward Terminal Test

- run sshd container:

```
$ docker build -t xforwardtest .
$ docker run -d -p 4022:22 --name sshd xforwardtest
```

- ssh into the container and run X11 client application

```
$ ssh -X root@0.0.0.0 -p 4022
 < input password 'pass' >
$# xterm
```

# Reference

- https://docs.docker.com/engine/examples/running_ssh_service/
- http://unix.stackexchange.com/questions/12755/how-to-forward-x-over-ssh-from-ubuntu-machine
