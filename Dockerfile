# set the base image (host OS) - Its downloads the image from docker hub
FROM python:3.10

# set the working DIR in the container
WORKDIR /code

# copy the dependancies to the working DIR in the container
# The "requirements.txt" will contain all the dependancies
COPY requirements.txt .

# install dependencies
RUN pip install -r ./requirements.txt

# copy the content (python file) to the working DIR in the container
COPY flaskappdemo.py .

# command to run on container when it starts
CMD ["python", "./flaskappdemo.py"]
