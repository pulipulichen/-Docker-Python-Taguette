#Specify the version of nodejs.
FROM python:3.12-rc-bullseye

RUN apt update
RUN apt-get install -y ffmpeg

COPY ./app/requirements.txt /
WORKDIR /
RUN pip install -r requirements.txt

CMD ["python", "/app/main.py"]

RUN apt-get install -y curl unzip xvfb libxi6 libgconf-2-4
RUN curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb [arch=amd64]  http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
RUN apt-get -y update
RUN apt-get -y install google-chrome-stable
# 版本是 Current browser version is 114.0.5735.133 with binary path /usr/bin/google-chrome

RUN wget https://chromedriver.storage.googleapis.com/114.0.5735.90/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip

RUN mv chromedriver /usr/bin/chromedriver
RUN chown root:root /usr/bin/chromedriver
RUN chmod +x /usr/bin/
