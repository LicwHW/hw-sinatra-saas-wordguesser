# Wordguesser: a scaffolded (!) ESaaS getting-started assignment

该仓库完成了[ESaaS实验](https://github.com/saasbook/hw-sinatra-saas-wordguesser)part1至part4部分，实现了一个猜词游戏。访问[https://hidden-bastion-36589.herokuapp.com/](https://hidden-bastion-36589.herokuapp.com/)查看在线演示。


## 实验内容

本实验完成了

* 测试驱动的WordGuesserGame类开发；
* RestFul风格的Web API设计与实现；
* 基于Cucumber的集成测试；
* 部署至Heroku.

## 配置方法

1. 安装2.6.6版本Ruby开发环境。
2. 进入项目根目录，执行`bundle install`安装相关依赖。
3. 执行`bundle exec rackup config.ru -p $PORT`在`$PORT`端口启动服务。
