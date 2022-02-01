# Plan of traning --

<img src="plan.png">

### tip to remove images and containers (ALL)

```
120  docker  rm $(docker ps -qa) -f
  121  docker rmi $(docker  images -q) -f

```

## building docker image --

<img src="pyimg.png">

### image new --

```
cd pythonimages/
[ashu@ip-172-31-29-84 pythonimages]$ ls
cisco.py  Dockerfile
[ashu@ip-172-31-29-84 pythonimages]$ docker build -t ashupython:v1 . 
Sending build context to Docker daemon  3.072kB
Step 1/5 : FROM fedora
 ---> b78af7a83692
Step 2/5 : RUN dnf install python3 -y
 ---> Running in c58458ed9d16
Fedora 35 - x86_64                               18 MB/s |  79 MB     00:04    
Fedora 35 openh264 (From Cisco) - x86_64        7.0 kB/s | 2.5 kB     00:00    
Fedora Modular 35 - x86_64                      8.9 MB/s | 3.3 MB     00:00    
Fedora 35 - x86_64 - Updates                     18 MB/s |  22 MB     00:01    
Fedora Modular 35 - x86_64 - Updates            9.8 MB/s | 2.8 MB     00:00    
Last metadata expiration check: 0:00:01 ago on Tue Feb  1 05:18:18 2022.
Package python3-3.10.0-1.fc35.x86_64 is already installed.
Dependencies resolved.
Nothing to do.
Complete!
Removing intermediate container c58458ed9d16
 ---> 18f3eca86b44
Step 3/5 : RUN mkdir /ashucode
 ---> Running in c7489cf48536
Removing intermediate container c7489cf48536
 ---> b22f648c2a04
Step 4/5 : COPY cisco.py /ashucode/
 ---> c02f956484db
Step 5/5 : CMD ["python3","/ashucode/cisco.py"]
 ---> Running in 5a3cbefb75e2
Removing intermediate container 5a3cbefb75e2
 ---> 2ff68235df68
Successfully built 2ff68235df68
Successfully tagged ashupython:v1

```

### building 

```
$ ls
cisco.py  Dockerfile  official.dockerfile
[ashu@ip-172-31-29-84 pythonimages]$ docker build -t ashupython:v2  -f  official.dockerfile  . 
Sending build context to Docker daemon  4.096kB
Step 1/4 : FROM python
 ---> e2e732b7951f
Step 2/4 : RUN mkdir /ashucode
 ---> Running in a5f194a80464
Removing intermediate container a5f194a80464
 ---> 175e88f6f760
Step 3/4 : COPY cisco.py /ashucode/

```

### creating container --

```
 149  docker run  -it  -d --name  ashupyc1  ashupython:v1  
  150  docker  ps
  151  docker  stats
  152  history 
[ashu@ip-172-31-29-84 pythonimages]$ docker  ps
CONTAINER ID   IMAGE            COMMAND                  CREATED          STATUS          PORTS     NAMES
6cfb0ab04391   anilapython:v2   "python3 /anilacode/…"   8 seconds ago    Up 7 seconds              anila2
10c0405d0900   anilapython:v1   "python3 /anilacode/…"   18 seconds ago   Up 17 seconds             anila1
c0c707e1a321   ashupython:v1    "python3 /ashucode/c…"   38 seconds ago   Up 37 seconds             ashupyc1

```


