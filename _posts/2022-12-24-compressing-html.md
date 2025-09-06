---
layout: post
title: Compressing HTML
categories: snippet
tags: ruby
latest_posts:
  enabled: true
  limit: 5# leave blank to include all the blog posts
---

Small snippet to compress HTML in Ruby. Returning from function is a string with the basic compressed HTML.

{% highlight ruby %}
def compress(html)
  html.gsub!(/\n+/,'')
  html.gsub!('  ', '')
  html.gsub!('> <', '><')
  puts html
end
{% endhighlight %}
