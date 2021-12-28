FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN lam create-db
RUN lam populate-db
RUN lam add-user -u admin -p admin
EXPOSE 5000
CMD ["lam", "run"]
