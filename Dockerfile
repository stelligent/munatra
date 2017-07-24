FROM ruby:2.3

RUN gem install sinatra

RUN apt-get update && apt-get -y install nginx

ADD nginx_conf/default /etc/nginx/sites-available/default

ADD app.rb /

ADD startup.sh /

EXPOSE 80

CMD ["/bin/bash","/startup.sh"]


