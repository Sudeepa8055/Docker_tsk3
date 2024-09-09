# Use an official Ubuntu image as the base image
FROM ubuntu:latest

# Update the package list and install Java
RUN apt-get update && apt-get install -y default-jdk

# Set the working directory to /app
WORKDIR /app

# Copy the Java file into the container
COPY HelloDevOps.java .

# Compile the Java program
RUN javac HelloDevOps.java

# Run the Java program when the container starts
CMD ["java", "HelloDevOps"]
