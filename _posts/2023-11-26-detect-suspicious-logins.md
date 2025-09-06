---
layout: post
title: Detect suspicious logins
categories: security
tags: ruby rails
---

For the project im currently working on i wanted to add some additinal security by detecting suspicious logins, after a lot of ideas of looking on the geographical origin of the request i ended up in looking on the IP address, you would expect that you will get some possitive faults when a user uses a diffrent device to login - but i dont think this will be a verry common for more then 1-3 devices issue.

The action taken will be to send a mail to user asking *"was it you who signed in, otherwise please act"*.

#### Ruby IPAddr
IPAddr provides a set of methods to manipulate an IP address. Both IPv4 and IPv6 are supported. Using the ´mask(prefixlen)´ - witch returns a new ipaddr built by masking IP address with the given prefixlen/netmask. (e.g. 8, 64, “255.255.255.0”, etc.). This can then then be used to query the database of saved IP addresses if currrent ip mask exists. If not it is a considerd a new IP address and a suspicious login.

{% highlight ruby %}
  ip_addr = IPAddr.new(request.remote_ip)
  ip_addr.mask(64)
{% endhighlight %}
