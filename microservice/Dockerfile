FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
workdir /app

## Step 2:
# Copy source code to working directory
copy app.py /app/
copy requirements.txt /app/
run mkdir model_data
copy model_data/*.* /app/model_data/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip 
RUN pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 80
Expose 80

## Step 5:
# Run app.py at container launch
CMD ["python","/app/app.py"]
