FROM alpine
# use this image to creating container 
RUN apk add python3 
# to get container shell 
RUN mkdir /ashucode 
ADD https://raw.githubusercontent.com/redashu/pythonLang/main/while.py /ashucode/
# to copy localfile from docker client to docker engine 
# inside container like docker cp 
# COPY and ADD both can take data from docker client -- while ADD can take input from URL also
ENTRYPOINT python3 /ashucode/while.py
# this is going to be default process for this image 
# CMD to choose default process which can be replace by user  
# ENTRYPOINT & CMD BOTH ARE SAME 
