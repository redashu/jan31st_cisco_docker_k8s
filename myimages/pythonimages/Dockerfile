FROM fedora 
# use this image to creating container 
RUN dnf install python3 -y 
# to get container shell 
RUN mkdir /ashucode 
COPY cisco.py /ashucode/
# to copy localfile from docker client to docker engine 
# inside container like docker cp 
CMD ["python3","/ashucode/cisco.py"]
# this is going to be default process for this image 
# CMD to choose default process which can be replace by user  
