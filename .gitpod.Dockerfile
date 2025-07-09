FROM gitpod/workspace-full:latest

LABEL maintainer="giridharsalana@gmail.com"

# Install custom tools, runtime, etc.
RUN sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get install --quiet --yes fish nala

# Install UV
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
    
# Apply user-specific settings
ENV LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8
ENTRYPOINT [ "bash" ]
