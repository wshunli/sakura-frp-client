# sakura-frp-client


欢迎使用 [Sakura Frp](https://www.natfrp.com) 管理平台，您可以使用本平台配置您的 Frp 映射，然后使用客户端进行连接。

运行：

``` Dockerfile
docker run -d --name sakurafrp --net=host -e SU=test -e SP=123456 -e SID=1 wshunli/sakura-frp-client:latest
```

其中：

SU 为账号；SP 为密码；SID 为服务器 ID 号。

关于 Sakura Frp 使用说明：

https://lo-li.cn/category/teach/frp

关于 Sakura Frp 常见问题及解决方法：

https://www.zerobbs.net/thread/118

