# D&D Notes Site Makefile
.PHONY: help install build serve clean docker-build docker-serve docker-stop docker-logs new-post new-session

# Default target
help:
	@echo "D&D Notes Site Commands:"
	@echo ""
	@echo "Local Development:"
	@echo "  install      Install Python dependencies"
	@echo "  build        Build the static site"
	@echo "  serve        Serve site locally (development mode)"
	@echo "  clean        Clean build artifacts"
	@echo ""
	@echo "Content Creation:"
	@echo "  new-post     Create a new post using copier template"
	@echo "  new-session  Create a new session prep using copier template"
	@echo ""
	@echo "Docker Development:"
	@echo "  docker-build       Build Docker image for the site"
	@echo "  docker-serve       Run site in Docker container (daemon mode, hot reload)"
	@echo "  docker-serve-custom Run custom Docker image (after docker-build)"
	@echo "  docker-stop        Stop the Docker container"
	@echo "  docker-logs        View Docker container logs"
	@echo "  docker-shell       Open shell in running container"
	@echo ""
	@echo "The site will be available at http://localhost:8000"

# Local development commands
install:
	@echo "Installing dependencies..."
	pip install -r requirements.txt

build:
	@echo "Building site..."
	mkdocs build

serve:
	@echo "Starting development server..."
	@echo "Site will be available at http://localhost:8000"
	mkdocs serve

clean:
	@echo "Cleaning build artifacts..."
	rm -rf site/

# Docker commands
docker-build:
	@echo "Building Docker image..."
	docker build -t dnd-notes .

docker-serve:
	@echo "Starting Docker container in daemon mode..."
	@echo "Site will be available at http://localhost:8000"
	@echo "Hot reloading enabled - changes to markdown files will be reflected automatically"
	docker run -d \
		--name dnd-notes-site \
		-p 8000:8000 \
		-v $(PWD):/docs \
		--rm \
		squidfunk/mkdocs-material

docker-serve-custom:
	@echo "Starting custom Docker container in daemon mode..."
	@echo "Site will be available at http://localhost:8000"
	@echo "Hot reloading enabled - changes to markdown files will be reflected automatically"
	docker run -d \
		--name dnd-notes-site \
		-p 8000:8000 \
		-v $(PWD)/docs:/docs/docs \
		-v $(PWD)/mkdocs.yml:/docs/mkdocs.yml \
		--rm \
		dnd-notes

docker-stop:
	@echo "Stopping Docker container..."
	-docker stop dnd-notes-site

docker-logs:
	@echo "Showing Docker container logs..."
	docker logs -f dnd-notes-site

docker-shell:
	@echo "Opening shell in running container..."
	docker exec -it dnd-notes-site /bin/sh

# Content creation commands
new-post:
	@echo "Creating new post..."
	copier copier_templates/post .

new-session:
	@echo "Creating new session prep..."
	copier copier_templates/session_prep .