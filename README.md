# Radicale Server Docker image
Docker image for [Radicale Server](https://github.com/Kozea/Radicale)

## Introduction
The special feature of this container is to configure the **User and Group ID** of the running docker container. So you can use the existing user permissions of a `Synology`. This Docker image is also extremly lightweight with ~66MB ([InfCloud web interface](https://github.com/Unrud/RadicaleInfCloud) is **not** included! But who needs that?!).

## Quickstart

1. [OPTIONAL] Create a group for all Docker users in Control Panel: **G-Docker**
2. [OPTIONAL] Create a user to run the Docker image: **Docker-Radicale**
3. [OPTIONAL] Adjust folder permissions to the new user
4. Use `Putty` to connect to `Synology`
5. Find `ID` of the user (step 2)
```bash
id -u Docker-Radicale
1001
```
6. [OPTIONAL -> see Screenshots] Start container once from the `Console`. This will be deposited in the Docker app on the `Synology` (under the tab Image). It is important to use the `ID` (step 5) because of folder permissions.

```bash
docker run -p SynoPort5232:5232 -e UID='1001' -e GID='1001' -v /your/custom/path/on/Synology:/data/ djonasdev/synology-radicale-server
```
7. A new container has now been created on `Synology` in the Docker app. This can now be renamed and modified.
8. You're done! The container is now always started with the previously used **User and Group ID**.


This image will automatically create a configuration file for
 Radicale Server.
 
## Screenshots

Download container

![Download container](https://raw.githubusercontent.com/dojo90/synology-docker-radicale-server/master/screenshots/1.png "Download container")

Setup #1 - General

![Setup #1 - General](https://raw.githubusercontent.com/dojo90/synology-docker-radicale-server/master/screenshots/2.png "Setup #1 - General")

Setup #2 - Volumes

![Setup #2 - Volumes](https://raw.githubusercontent.com/dojo90/synology-docker-radicale-server/master/screenshots/3.png "Setup #2 - Volumes")

Setup #3 - Ports

![Setup #3 - Ports](https://raw.githubusercontent.com/dojo90/synology-docker-radicale-server/master/screenshots/4.png "Setup #3 - Ports")

Setup #4 - User/Group ID

![Setup #4 - User/Group ID](https://raw.githubusercontent.com/dojo90/synology-docker-radicale-server/master/screenshots/5.png "Setup #4 - User/Group ID")

Setup #5 - Folder Permission

![Setup #5 - Folder Permission](https://raw.githubusercontent.com/dojo90/synology-docker-radicale-server/master/screenshots/6.png "Setup #5 - Folder Permission")

Setup #6 - Folder Permission

![Setup #6 - Folder Permission](https://raw.githubusercontent.com/dojo90/synology-docker-radicale-server/master/screenshots/7.png "Setup #6 - Folder Permission")

Start Container

![Start Container](https://raw.githubusercontent.com/dojo90/synology-docker-radicale-server/master/screenshots/8.png "Start Container")

## Detailed description of image and containers

### Used ports

This image uses 1 tcp ports:
* 5232 - Standart port of Radicale Server 

### Volume
This image uses one volume with internal path `/data`. It will create a subfolder `config` and store `configuration file` (automatically created if not exist) there.

## Radicale configuration

To customize Radicale configuration, either: 
* Use this repository preconfigured [configuration file](docker/radicale.ini),
* Use a custom [configuration file](https://raw.githubusercontent.com/Kozea/Radicale/master/config) from Radicale repository
* Have a look at [Radicale Documentation](http://radicale.org/configuration/)

## License

This Dockerfile and scripts are released under [MIT License](https://github.com/dojo90/synology-docker-mozilla-syncserver/blob/master/LICENSE).

[Radicale Server](https://github.com/Kozea/Radicale) has its own license.