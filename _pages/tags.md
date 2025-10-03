---
layout: page
title: tags
permalink: /tags/
resource: true
latest_posts:
  enabled: true
  limit: 5# leave blank to include all the blog posts
---

<header class="mb-3">
    <hr>
    <h3>Tags</h3>
    <hr>
</header>

<div>
    {% for tag in site.tags %}
        <span class="fs-5 text-uppercase"><i class="bi bi-tag me-1"></i>{{ tag|first }}</span>
        <ul class="my-2">
            {% for post in tag.last %}
                <li><a href="{{ post.url }}">{{ post.title }}</a></li>
            {% endfor %}
        </ul>
    {% endfor %}
</div>
