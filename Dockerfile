FROM ruby:2.3

RUN gem install sinatra

ADD app.rb /

EXPOSE 80

CMD ["/usr/local/bin/ruby","/app.rb"]


