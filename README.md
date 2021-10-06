# One Container Radio
Using Ices2 and Icecast2, the goal is to build a simple, single container deployment.  One should be able to fill few parameters and direct the container to a music folder or share giving them a basic self hosted random music stream. (Reword)

** Note: Usernames / Passwords are defaulted currently.  Change them if you decide to use this... **

** Warning: Work in progress, Docker experimenting.  Please improve if you would like! Thanks :) **

## Usage ##
- Set the port
- Set the external share (only finds .oggs right now)
- Execute the command
- Navigate to 127.0.0.1:8080
- Enjoy your music

(Below is based on a local build)

```bash
docker run -p 8080:8000 -v d:/music:/media -t docker-one-container-radio:latest
```

## To Do ##
 - [ ] Update parameters for username and passwords
 - [ ] Add Customizations
 - [ ] Update Readme
 - [ ] Add Parameters
 - [ ] Build Docker Compose (other forms to deploy)
 - [ ] Modify exposed volumes for log access / addition information

## Influenced By: ##
The below repositories helped shape this repo; please check them out.
- https://github.com/moul/docker-icecast
- https://github.com/infiniteproject/icecast
