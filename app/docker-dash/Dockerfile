FROM python

ENV RUN_IN_DOCKER true

# setup our script in /app
RUN mkdir -p /app
WORKDIR /app

# install requirements
COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy in our code
COPY hub-action.json .
COPY src/ .

# start app
ENTRYPOINT ["python", "main.py"]
