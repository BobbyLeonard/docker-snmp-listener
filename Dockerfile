FROM python:3
WORKDIR /app
RUN mkdir log
COPY ./app /app
RUN pip install -r requirements.txt
#ENV PATH=/root/.local:$PATH
ENV TERM=xterm
EXPOSE 1161/udp
ENTRYPOINT [ "python","-u", "main.py" ]
#ENTRYPOINT [ "/bin/bash", "-l", "-c" ]

