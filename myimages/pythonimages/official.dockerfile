FROM python
# use this image to creating container  
RUN mkdir /ashucode 
COPY cisco.py /ashucode/
# to copy localfile from docker client to docker engine 
# inside container like docker cp 
CMD ["python","/ashucode/cisco.py"]
# this is going to be default process for this image 
# CMD to choose default process which can be replace by user  
