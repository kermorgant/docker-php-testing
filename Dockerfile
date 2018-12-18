FROM thecodingmachine/php:7.2-v2-cli-node8

RUN curl -sS -L https://dl.google.com/linux/linux_signing_key.pub -o /tmp/a.key #| apt-key add --no-tty -
RUN echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list
RUN apt-get update -q -y
RUN apt-get install -y google-chrome-stable

RUN npm install chromedriver
RUN npm install https://gitlab.com/gitlab-org/gitlab-selenium-server.git

RUN set -x \
# Install ngrok (latest official stable from https://ngrok.com/download).
&& curl -Lo /ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip \
&& unzip -o /ngrok.zip -d /bin \
&& rm -f /ngrok.zip \
