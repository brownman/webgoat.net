FROM mono
COPY . /usr/local/app/
RUN apt-get update && apt-get upgrade -y && apt-get install -y mono-xsp4 sqlite3
RUN cd /usr/local/app/ && xbuild
CMD cd /usr/local/app/WebGoat && xsp4

#docker build -t goat .

#docker run -t -p 8888:9000 webgoat
#setup sqlite db by supplying path to local folder
