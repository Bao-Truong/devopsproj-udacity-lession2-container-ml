FROM python:3.7.3-stretch

## Complete Step 1:
WORKDIR /app

## Complete Step 2:
COPY . /app/
# Copy source code to working directory

## Complete Step 3:
RUN pip install --upgrade pip && \
    pip install --trusted-host pypi.pytho.org -r requirements.txt
# Install packages from requirements.txt

# hadolint ignore=DL3013

## Complete Step 4:
EXPOSE 80
# Expose port 80

## Complete Step 5:
ENTRYPOINT ["python3","app.py"]
# Run app.py at container launch
