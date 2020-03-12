FROM python:3.8-buster
WORKDIR /app/
COPY . /app/
RUN make install
EXPOSE 80
CMD ["python", "app.py"]