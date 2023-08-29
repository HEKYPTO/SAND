# Use a base image with Zsh installed
FROM debian:latest

# Install Zsh and any necessary packages
RUN apt-get update && apt-get install -y zsh

# Copy your script into the container
COPY sand.zsh /sand.zsh

# Set the script as executable
RUN chmod +x /sand.zsh

# Set the entrypoint for the container
CMD ["/sand.zsh"]