FROM ubuntu

ENV PORT=8080
ENV DATABASE_USER=$DATABASE_USER
ENV JDBC_URL=$JDBC_URL
ENV DATABASE_PASSWORD=$DATABASE_PASSWORD
ENV ALLOWED_ORIGINS=$ALLOWED_ORIGINS

COPY ./glorify-the-lord.zip /glorify-the-lord.zip

RUN apt-get update
RUN apt-get install -y zip
RUN unzip /glorify-the-lord.zip

CMD ["./glorify-the-lord"]

EXPOSE 8080
