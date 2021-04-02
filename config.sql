SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(500) COLLATE utf8_bin NOT NULL,
  `value` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `application` varchar(50) COLLATE utf8_bin NOT NULL,
  `profile` varchar(50) COLLATE utf8_bin NOT NULL,
  `label` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `available` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'eureka.client.service-url.defaultZone', 'http://localhost:9001/eureka/', 'application', 'dev', 'master', 'Y');
INSERT INTO `config` VALUES ('8', 'eureka.server.enable-self-preservation', 'true', 'service-registry', 'cluster', 'master', 'Y');
INSERT INTO `config` VALUES ('9', 'eureka.server.eviction-interval-timer-in-ms', '5000', 'service-registry', 'cluster', 'master', 'Y');
INSERT INTO `config` VALUES ('10', 'eureka.instance.prefer-ip-address', 'true', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('11', 'eureka.instance.lease-expiration-duration-in-seconds', '10', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('12', 'eureka.instance.lease-renewal-interval-in-seconds', '5', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('13', 'eureka.client.service-url.defaultZone', 'http://eureka-0.eureka:9001/eureka/,http://eureka-1.eureka:9001/eureka/,http://eureka-2.eureka:9001/eureka/', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('14', 'eureka.healthcheck.enabled', 'true', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('15', 'spring.zipkin.sender.type', 'rabbit', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('16', 'spring.zipkin.rabbitmq.queue', 'zipkin', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('17', 'spring.sleuth.web.client.enabled', 'true', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('18', 'spring.sleuth.sampler.probability', '1.0', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('19', 'spring.datasource.driver-class-name', 'com.mysql.cj.jdbc.Driver', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('20', 'spring.datasource.type', 'com.alibaba.druid.pool.DruidDataSource', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('21', 'spring.datasource.url', 'jdbc:mysql://mysql-0.mysql:3306/demo?autoReconnect=true&useUnicode=true&useUnicode=true&characterEncoding=UTF-8&serverTimezone=GMT%2B8', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('22', 'spring.datasource.username', 'demo', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('23', 'spring.datasource.password', '1234', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('24', 'spring.datasource.initialize', 'true', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('25', 'spring.datasource.continueOnError', 'true', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('26', 'spring.redis.database', '0', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('27', 'spring.redis.host', 'redis-0.redis', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('28', 'spring.redis.port', '6379', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('30', 'spring.redis.pool.maxActive', '200', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('31', 'spring.redis.pool.maxWait', '-1', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('32', 'spring.redis.pool.maxIdel', '10', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('33', 'spring.redis.pool.minIdel', '0', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('34', 'spring.redis.timeout', '1000', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('35', 'spring.rabbitmq.host', 'rabbitmq-0.rabbitmq', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('36', 'spring.rabbitmq.port', '5672', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('37', 'spring.rabbitmq.username', 'guest', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('38', 'spring.rabbitmq.password', 'guest', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('39', 'management.endpoints.web.exposure.include', '*', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('40', 'eureka.client.registry-fetch-interval-seconds', '5', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('41', 'ribbon.MaxAutoRetries', '0', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('42', 'ribbon.MaxAutoRetriesNextServer', '2', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('43', 'ribbon.OkToRetryOnAllOperations', 'true', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('44', 'spring.cloud.bus.trace.enabled', 'true', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('45', 'spring.cloud.loadbalancer.retry.enabled', 'true', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('46', 'ribbon.connectTimeout', '2000', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('47', 'ribbon.readTimeout', '5000', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('48', 'spring.jackson.date-format', 'yyyy-MM-dd HH:mm:ss', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('49', 'spring.jackson.time-zone', 'GMT+8', 'application', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('50', 'zuul.ribbonIsolationStrategy', 'THREAD', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('51', 'zuul.retryable', 'true', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('52', 'zuul.routes.customer.path', '/customer/**', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('53', 'zuul.routes.customer.serviceId', 'service-customer', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('54', 'zuul.routes.customer.stripPrefix', 'true', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('55', 'zuul.routes.product.path', '/product/**', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('56', 'zuul.routes.product.serviceId', 'service-product', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('57', 'zuul.routes.product.stripPrefix', 'true', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('58', 'zuul.routes.supplier.path', '/supplier/**', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('59', 'zuul.routes.supplier.serviceId', 'service-supplier', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('60', 'zuul.routes.supplier.stripPrefix', 'true', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('61', 'zuul.routes.order.path', '/order/**', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('62', 'zuul.routes.order.serviceId', 'service-order', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('63', 'zuul.routes.order.stripPrefix', 'true', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('64', 'ribbon.connectTimeout', '2000', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('65', 'ribbon.readTimeout', '5000', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('66', 'ribbon.maxAutoRetries', '1', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('67', 'ribbon.maxAutoRetriesNextServer', '3', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('68', 'ribbon.okToRetryOnAllOperations', 'true', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('69', 'zuul.routes.home.path', '/**', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('70', 'zuul.routes.home.url', 'http://vue-ddd-trade', 'service-zuul', 'docker', 'master', 'Y');
INSERT INTO `config` VALUES ('71', 'spring.redis.cluster.nodes', 'redis-cluster-0.redis-cluster:6379,redis-cluster-1.redis-cluster:6379,redis-cluster-2.redis-cluster:6379', 'application', 'docker', 'master', 'N');
