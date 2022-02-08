FROM alpine:latest

RUN apk add --update python3 py-pip

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -U flask

COPY . /app

#ENTRYPOINT [ "python" ]

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
