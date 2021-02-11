FROM python:3.7.3-stretch

#ARG NEWS_API_KEY=$NEWS_API_KEY

#ENV NEWS_API_KEY=${NEWS_API_KEY}

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . newspie /app/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 81
EXPOSE 81

## Step 5:
# Run news.py at container launch
CMD ["python", "news.py"]

