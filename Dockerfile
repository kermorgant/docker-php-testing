FROM thecodingmachine/php:7.2-v2-cli-node8

RUN curl -sS -L https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list
RUN apt-get update -q -y
RUN apt-get install -y google-chrome-stable

RUN npm install chromedriver
RUN npm install https://gitlab.com/gitlab-org/gitlab-selenium-server.git
