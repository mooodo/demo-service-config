# demo-service-config
这是一个项目用于演示微服务的配置中心config。
该项目演示了如下内容：
### 多套环境配置
在bootstrap.yml文件中编写了多套环境配置：
```
composite: 不访问git，而是直接访问本地yml文件获取配置信息
dev:       本地开发的时候，使用git服务器获取配置信息
docker:    云端部署的时候，使用git服务器获取配置信息
jdbc:      云端部署的时候，使用数据库获取配置信息
```
### 集中式配置管理
将各微服务在云端部署的时候使用的环境配置在此处统一管理。
当各微服务在云端启动时，通过读取配置中心获取配置信息，从而启动微服务：
```
application-dev.yml         所有微服务在本地开发时读取的配置信息
application-docker.yml      所有微服务在云端部署时读取的配置信息
service-customer-docker.yml 微服务service-customer在云端部署时读取的配置信息
...
```
### 通过数据库进行配置管理
可以不采用git，而是换成mysql进行配置信息管理：
```
1.使用config.sql在mysql中建立表，并在bootstrap.yml中配置数据库链接。
2.配置中心启动时，使用jdbc这套配置启动系统。
3.配置rabbitmq，以便在更新配置信息以后，就更新通知所有微服务，让更新生效。
```