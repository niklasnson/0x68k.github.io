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

<ul>
    {% for tag in site.tags %}
    <li>
        <a class="text-capitalize" href='/archives/tag/{{tag|first}}'>{{ tag|first }}</a>
            <ul>
                {% for post in tag.last %}
                    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
                {% endfor %}
            </ul>
    </li>
    {% endfor %}
</ul>
