# git-workspace
### How to setup a nice git workspace in Linux/Mac/Windows(cygwin) with auto-complete feature

## Basic Settings:

1- Download these 3 files of this repo to your local pc: 

1. bash_profile_course
2. git-completion.bash
3. git-prompt.sh

2- Open your terminal and type the commands below

**Some commands must be adapted to your custom settings**
```shell
$ cp Downloads/git-completion.bash ~
$ cp Downloads/git-prompt.sh ~
$ cat Downloads/bash_profile_course >> ~/.bashrc
```

3- Restart your terminal.


## Configure SSH Key and your project:

1- Create ssh key if you dont have it
```shell
$ ssh-keygen -t rsa -b 4096
$ cat ~/.ssh/id_rsa.pub # create public
```
2- Copy and past this key in your git account

3- Create git a repository

4- Use the commands below to make the first sync
```shell
git remote add origin git@github.com:<<username>>/<<git-project-name>>.git
git push -u origin master
```


## Improve your README.md 
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

## Screenshots

![alt text](https://github.com/gabrielpsilva/git-workspace/blob/master/screenshots/Capture1.png "Cygwin")
![alt text](https://github.com/gabrielpsilva/git-workspace/blob/master/Git-Cheat-Sheet-by-RebelLabs.png "Cheat Sheet")



