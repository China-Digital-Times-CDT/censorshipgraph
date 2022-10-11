
DNS投毒（DNS Poisoning）是 #GFW 的一个重要手段，是利用传统的域名解析服务的公开性进行篡改后返回错误的IP地址。在加密通讯技术越来越普及的世代，因为DNS本身的发展的限制，这个方法仍然非常有效。

## DNS投毒的原理、

由于防火长城是一个通路的（on-path）/旁观者（man-on-the-side）的系统 ，所以它没办法通过修改或者简单丢弃互联网上传输的那些被封锁的域名的 DNS 查询响应。但是由于 DNS 使用无状态、未加密的 UDP 协议进行传输，所以 GFW 可以通过可以实时监测互联网上的流量，当在用户的 DNS 查询中检测到受审查的内容时，注入错误的响应。

当一个子域名被封锁时，顶级域名可能不会被封锁。例如，cs.colorado.edu 被防火长城封锁了，而 colorado.edu 却没有被封锁，这说明GFW 有时候也考虑到过渡封锁带来的[[censorship.collateraldamage]]。

根据一些研究，至少有 31.1 万个域名被 GFW 的 DNS 过滤系统干扰。并且 GFW 还主动出击，在世界范围内污染了公共 DNS 解析服务（public DNS resolvers）中至少 7.7 万个域名的数据，其中包括谷歌和 Cloudflare 的 DNS 解析器。

## DNS投毒的实例

2021年12月25日，中国的游戏用户报告 Steam 游戏平台在中国无法访问，域名解析指向了一个错误的 IP 地址。国外用户查验后没有同样的问题，之后用户报告在中国工信部网站上,Steam 的社区域名（steampowered.com）已经列入黑名单。


## DNS投毒的影响

因为DNS系统是一个全球的协同网络，所以对其投毒会给其他国家的网络域名解析带来 [[censorship.collateraldamage]]，从而无形中也影响到他国国民经济和[全球经济稳定](https://news.ycombinator.com/item?id=8931827)，当然也极大影响了中国的形象。

DNS投毒给了GFW发动资源耗尽攻击（resource exhaustion attacks）的可能性。 一旦 GFW 将 DNS 查询的结果大量导向某个 IP 地址，受影响的组织将在服务器上付出不可忽视的开销。

## 参考资料

- [The Great Firewall of China: A Digital Black Hole](https://www.catchpoint.com/blog/great-firewall-of-china) 
- [How Great is the Great Firewall?
Measuring China’s DNS Censorship](https://www.usenix.org/system/files/sec21-hoang.pdf)
- [Exhaustive study puts China’s infamous Great Firewall under the microscope](https://portswigger.net/daily-swig/exhaustive-study-puts-chinas-infamous-great-firewall-under-the-microscope)
- [How Great is the Great Firewall?](https://www.usenix.org/system/files/sec21-hoang.pdf)
- [One in four Google Public DNS requests are being intercepted in China: report](https://blog.apnic.net/2019/07/17/one-in-four-google-public-dns-requests-are-being-intercepted-in-china-report/)