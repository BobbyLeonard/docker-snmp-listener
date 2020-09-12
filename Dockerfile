FROM python:3
WORKDIR /app
COPY ./app /app
RUN pip install -r requirements.txt
ENV PATH=/root/.local:$PATH
ENV TERM=xterm
EXPOSE 8000/udp
CMD [ "python3","-u", "./main.py" ] 
