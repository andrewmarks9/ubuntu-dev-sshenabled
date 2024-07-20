# Docker SSH & Python Environment

This Dockerfile creates a containerized environment with SSH access and Python installed, based on Ubuntu. It's suitable for development and testing purposes where SSH access to a container is required.

## Features

- **Ubuntu Base**: Latest Ubuntu base image for a familiar and versatile environment.
- **SSH Access**: SSH server setup for remote access to the container.
- **Python Installed**: Comes with Python 3 and pip, ready for Python development.

## Building the Image

To build the Docker image from this Dockerfile, navigate to the directory containing the Dockerfile and run:

```bash
docker build -t my_ssh_python_image .
```
```markdown
# Docker SSH & Python Environment

This Dockerfile creates a containerized environment with SSH access and Python installed, based on Ubuntu. It's suitable for development and testing purposes where SSH access to a container is required.

## Features

- **Ubuntu Base**: Latest Ubuntu base image for a familiar and versatile environment.
- **SSH Access**: SSH server setup for remote access to the container.
- **Python Installed**: Comes with Python 3 and pip, ready for Python development.

## Building the Image

To build the Docker image from this Dockerfile, navigate to the directory containing the Dockerfile and run:

```bash
docker build -t my_ssh_python_image .
```

This command builds the Docker image and tags it as `my_ssh_python_image`.

## Running a Container

To run a container from the image:

```bash
docker run -d -p <HostPort>:22 --name my_ssh_python_container my_ssh_python_image
```

Replace `<HostPort>` with a port number on your host machine where you want to access the container's SSH server.

## Connecting via SSH

After the container is running, connect to it

 via

 SSH using:

```bash
ssh root@localhost -p <HostPort>
```

The default password for the `root` user is set in the Dockerfile. For security reasons, it's highly recommended to change this password or use SSH keys.

## Customization

- **SSH Port**: You can map the container's SSH port (22) to any port on the host machine.
- **Environment Variables**: Customize environment variables as needed for your development environment.

## Security

This setup is intended for development and testing in a secure environment. Running an SSH server in a Docker container, especially with root access and a simple password, poses security risks. For production use, consider:

- Disabling root login.
- Using SSH keys instead of passwords.
- Implementing additional security measures as per your organization's policies.

## License

This project is open-sourced under the MIT License.
```
