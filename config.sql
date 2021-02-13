/*
Navicat MySQL Data Transfer

Source Server         : 118.190.201.78
Source Server Version : 50635
Source Host           : 118.190.201.78:32306
Source Database       : config

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2021-02-10 11:24:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for config_properties
-- ----------------------------
DROP TABLE IF EXISTS `config_properties`;
CREATE TABLE `config_properties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key1` varchar(500) COLLATE utf8_bin NOT NULL,
  `value1` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `application` varchar(50) COLLATE utf8_bin NOT NULL,
  `profile` varchar(50) COLLATE utf8_bin NOT NULL,
  `label` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of config_properties
-- ----------------------------
INSERT INTO `config_properties` VALUES ('1', 'eureka.client.service-url.defaultZone', 'http://localhost:9001/eureka/', 'application', 'dev', 'master');
INSERT INTO `config_properties` VALUES ('8', 'eureka.server.enable-self-preservation', 'true', 'service-registry', 'cluster', 'master');
INSERT INTO `config_properties` VALUES ('9', 'eureka.server.eviction-interval-timer-in-ms', '5000', 'service-registry', 'cluster', 'master');
INSERT INTO `config_properties` VALUES ('10', 'eureka.instance.prefer-ip-address', 'true', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('11', 'eureka.instance.lease-expiration-duration-in-seconds', '10', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('12', 'eureka.instance.lease-renewal-interval-in-seconds', '5', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('13', 'eureka.client.service-url.defaultZone', 'http://eureka-0.eureka:9001/eureka/,http://eureka-1.eureka:9001/eureka/,http://eureka-2.eureka:9001/eureka/', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('14', 'eureka.healthcheck.enabled', 'true', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('15', 'spring.zipkin.sender.type', 'rabbit', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('16', 'spring.zipkin.rabbitmq.queue', 'zipkin', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('17', 'spring.sleuth.web.client.enabled', 'true', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('18', 'spring.sleuth.sampler.probability', '1.0', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('19', 'spring.datasource.driver-class-name', 'com.mysql.cj.jdbc.Driver', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('20', 'spring.datasource.type', 'com.alibaba.druid.pool.DruidDataSource', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('21', 'spring.datasource.url', 'jdbc:mysql://mysql-0.mysql:3306/demo?autoReconnect=true&useUnicode=true&useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT%2B8', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('22', 'spring.datasource.username', 'demo', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('23', 'spring.datasource.password', '1234', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('24', 'spring.datasource.initialize', 'true', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('25', 'spring.datasource.continueOnError', 'true', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('26', 'spring.redis.database', '0', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('27', 'spring.redis.host', 'redis-0.redis', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('28', 'spring.redis.port', '6379', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('30', 'spring.redis.pool.maxActive', '200', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('31', 'spring.redis.pool.maxWait', '-1', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('32', 'spring.redis.pool.maxIdel', '10', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('33', 'spring.redis.pool.minIdel', '0', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('34', 'spring.redis.timeout', '1000', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('35', 'spring.rabbitmq.host', 'rabbitmq-0.rabbitmq', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('36', 'spring.rabbitmq.port', '5672', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('37', 'spring.rabbitmq.username', 'guest', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('38', 'spring.rabbitmq.password', 'guest', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('39', 'management.endpoints.web.exposure.include', '*', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('40', 'eureka.client.registry-fetch-interval-seconds', '5', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('41', 'ribbon.MaxAutoRetries', '0', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('42', 'ribbon.MaxAutoRetriesNextServer', '2', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('43', 'ribbon.OkToRetryOnAllOperations', 'true', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('44', 'spring.cloud.bus.trace.enabled', 'true', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('45', 'spring.cloud.loadbalancer.retry.enabled', 'true', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('46', 'ribbon.connectTimeout', '2000', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('47', 'ribbon.readTimeout', '5000', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('48', 'spring.jackson.date-format', 'yyyy-MM-dd HH:mm:ss', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('49', 'spring.jackson.time-zone', 'GMT+8', 'application', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('50', 'zuul.ribbonIsolationStrategy', 'THREAD', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('51', 'zuul.retryable', 'true', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('52', 'zuul.routes.customer.path', '/customer/**', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('53', 'zuul.routes.customer.serviceId', 'service-customer', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('54', 'zuul.routes.customer.stripPrefix', 'true', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('55', 'zuul.routes.product.path', '/product/**', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('56', 'zuul.routes.product.serviceId', 'service-product', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('57', 'zuul.routes.product.stripPrefix', 'true', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('58', 'zuul.routes.supplier.path', '/supplier/**', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('59', 'zuul.routes.supplier.serviceId', 'service-supplier', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('60', 'zuul.routes.supplier.stripPrefix', 'true', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('61', 'zuul.routes.order.path', '/order/**', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('62', 'zuul.routes.order.serviceId', 'service-order', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('63', 'zuul.routes.order.stripPrefix', 'true', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('64', 'ribbon.connectTimeout', '2000', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('65', 'ribbon.readTimeout', '5000', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('66', 'ribbon.maxAutoRetries', '1', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('67', 'ribbon.maxAutoRetriesNextServer', '3', 'service-zuul', 'docker', 'master');
INSERT INTO `config_properties` VALUES ('68', 'ribbon.okToRetryOnAllOperations', 'true', 'service-zuul', 'docker', 'master');
