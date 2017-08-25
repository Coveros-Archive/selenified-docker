# Getting the Docker image
`docker pull rkenney525/selenified-runner`

# Using the Docker Image
`docker run -v /path/to/maven/project/using/selenified:/tmp/tests -p 5900:5900 --rm rkenney525/selenified-runner`

**Note**: For the `-v` property, the left hand side should point to the directory and can be whatever, but it is important that the right hand side always be `/tmp/tests`

Also consider using
 1. cd `/path/to/maven/project/using/selenified`
 1. `docker run -v /$(pwd):/tmp/tests -p 5900:5900 --rm rkenney525/selenified-runner`

The browser is running in a virtual display, which is hosted via VNC. If you want to watch your tests run, download a VNC client ([TightVNC Viewer for Windows](http://tightvnc.com/download.html)) and connect to port 5900.

# Building the Docker image yourself
 1. Install docker
 1. `cd /this/project/directory`
 1. `docker build -t selenified-runner .`
