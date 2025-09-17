---
layout: page
title: bookmarks
permalink: /bookmarks/
resource: true
latest_posts:
  enabled: true
  limit: 5# leave blank to include all the blog posts
---

{% for category in site.data.bookmarks %}
{% assign items = category[1] | sort_natural: "name" %}
<h5>{{ category[0] | capitalize }}</h5>
<ul>
{% for item in items %}
    <li><a target="_blank" href="{{ item.link }}">{{ item.name }}</a></li>
    <ul><li>{{ item.description }}</li></ul>
{% endfor %}
</ul>
{% endfor %}


