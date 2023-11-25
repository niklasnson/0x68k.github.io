---
layout: post
title: Compressing HTML
categories: [snippet]
tags: ruby
---

Small snippet to compress HTML in Ruby. 

{% highlight ruby %}
def compress(html)
  html.gsub!(/\n+/,'')
  html.gsub!('  ', '')
  html.gsub!('> <', '><')
  puts html
end
{% endhighlight %}
