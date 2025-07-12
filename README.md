# Laravel Bootstrap Container

A Docker container that provides the Laravel CLI without requiring local PHP/Composer installation.

## Usage

### Using the pre-built image (recommended)
```bash
docker run -it -v $(pwd):/workspace godske/docker-laravel-cli laravel new my-app
```

### Build the image locally
```bash
docker build -t docker-laravel-cli .
```

### Create a new Laravel project
```bash
docker run -it -v $(pwd):/workspace docker-laravel-cli laravel new my-app
```

### Using with starter kits
```bash
docker run -it -v $(pwd):/workspace docker-laravel-cli laravel new my-app --using=your-username/your-starter-kit
```

### Any Laravel CLI command
```bash
docker run -it -v $(pwd):/workspace docker-laravel-cli laravel --help
docker run -it -v $(pwd):/workspace docker-laravel-cli laravel new my-app --git
```

### File Ownership
By default, files are created as root. To create files with your user ownership, use the USER_ID and GROUP_ID environment variables:

```bash
docker run -it -v $(pwd):/workspace -e USER_ID=$(id -u) -e GROUP_ID=$(id -g) godske/docker-laravel-cli laravel new my-app
```