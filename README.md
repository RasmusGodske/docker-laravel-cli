# Laravel Bootstrap Container

A Docker container that provides the Laravel CLI without requiring local PHP/Composer installation.

## Usage

### Using the pre-built image (recommended)
```bash
docker run -it -v $(pwd):/workspace --user $(id -u):$(id -g) godske/docker-laravel-cli new my-app
```

### Build the image locally
```bash
docker build -t docker-laravel-cli .
```

### Create a new Laravel project
```bash
docker run -it -v $(pwd):/workspace --user $(id -u):$(id -g) docker-laravel-cli new my-app
```

### Using with starter kits
```bash
docker run -it -v $(pwd):/workspace --user $(id -u):$(id -g) docker-laravel-cli new my-app --using=your-username/your-starter-kit
```

### Any Laravel CLI command
```bash
docker run -it -v $(pwd):/workspace --user $(id -u):$(id -g) docker-laravel-cli --help
docker run -it -v $(pwd):/workspace --user $(id -u):$(id -g) docker-laravel-cli new my-app --git
```