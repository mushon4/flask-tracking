## CI/CD Flask App

This project consists of:
###### 1. Flask simple application forked from here https://github.com/mjhea0/flask-tracking
###### 2. Dockerfile - instuctions for building our flask app docker image based on python official image.
- Adding flask app files
- Installing dependecies from requesitments.xml file
- Exposing 5000 port of which the app listens to
- Running run.py by default which starts flask HTTP server
- Requirements.xml is copied first in order to leverage docker caching (faster build) - [dockerfile best practices]

###### 3. .travis.yml - [travis-ci.com] CI/CD stages
- Building python app and running tests
- Building docker image out of the docker file and pushing it to repository
- Deploying docker image to docker hub repository by executing push_docker_image.sh script

###### 4. Ansible-playbook - provisioning flask app on a remote host
- docker login task
- docker run container task

* For ansible provisioning I have been using DigitalOcean droplet

[Flask-Traking repository]: <https://github.com/mjhea0/flask-tracking>
[travis-ci.com]: https://travis-ci.com/
[dockerfile best practices]: https://docs.docker.com/v17.12/develop/develop-images/dockerfile_best-practices/