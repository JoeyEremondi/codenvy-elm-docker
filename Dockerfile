#We start from a base image with NPM already installed
FROM codenvy/angular-yeoman

RUN sudo npm install --global elm

EXPOSE 		3000
ENV			CODENVY_APP_PORT_80_HTTP 3000

VOLUME ["/home/user/app"]
ENV CODENVY_APP_BIND_DIR /home/user/app/

ADD $src$ /home/user/app/

CMD cd /home/user/app && sudo elm-reactor --port=3000
