# Use Python 3.6 or later as a base image
FROM python:3.9
# Copy contents into image
WORKDIR /app
COPY . /app

# Install pip dependencies from requirements
RUN pip install --no-cache-dir -r requirements.txt

# Set YOUR_NAME environment variable
ENV YOUR_NAME=Costi

# Expose the correct port
EXPOSE 5500

# Create an entrypoint
ENTRYPOINT ["python"]
CMD ["app.py"]
