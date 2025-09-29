---
layout: page
title: archive
permalink: /archive/
resource: true
latest_posts:
  enabled: true
  limit: 5# leave blank to include all the blog posts
---

<header class="mb-3">
    <hr>
    <h3>Archive</h3>
    <hr>
</header>

<div>
    <h5>{{ site.posts.first.date | date: '%Y' }}</h5>
    {%for post in site.posts %}
    {% unless post.next %}
      <ul>
      {% else %}
        {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
        {% capture nyear %}{{ post.next.date | date: '%Y' }}{% endcapture %}
        {% if year != nyear %}
        </ul>
        <h5>{{ post.date | date: '%Y' }}</h5>
        <ul class="past">
        {% endif %}
      {% endunless %}
      <li>
        <time>{{ post.date | date:"%d %b" }}</time>
        <a href="{{ post.url }}">{{ post.title }}</a>
      </li>
    {% endfor %}
    </ul>
</div>
