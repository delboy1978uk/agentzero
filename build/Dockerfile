FROM agent0ai/agent-zero

RUN apt-get update

# Install nvm (Node Version Manager)
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Set up environment variables for nvm
ENV NVM_DIR=/root/.nvm
ENV PATH=$NVM_DIR/versions/node/v24.13.0/bin:$PATH

# Load nvm and install latest LTS Node.js
RUN . "$NVM_DIR/nvm.sh" && \
    nvm install --lts && \
    nvm use --lts && \
    nvm alias default lts/*

# Setuo PNPM
RUN curl -fsSL https://get.pnpm.io/install.sh | bash

# Verify installations
RUN node --version  \
RUN npm --version \
RUN nvm --version

