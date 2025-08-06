FROM squidfunk/mkdocs-material:latest

# Set working directory
WORKDIR /docs

# Copy requirements and install additional dependencies if needed
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy project files
COPY . .

# Expose port
EXPOSE 8000

# Command to serve the site
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]