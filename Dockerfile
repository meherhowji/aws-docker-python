# source the base image from https://gallery.ecr.aws/lambda/python 
# select the image and click on the copy button to get this url
FROM public.ecr.aws/lambda/python:3.9

# Copy function code, handler function file path
COPY app.py ${LAMBDA_TASK_ROOT}

# With a Python application, all the modules you use should be defined in requirements.txt
# To make sure all dependencies are correctly bundled
COPY requirements.txt ./
RUN  pip3 install -r requirements.txt

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
# name of the file (dot) name of the handler function
CMD [ "app.handler" ]
