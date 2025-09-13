---
layout: page
title: projects
permalink: /projects/
resource: true
latest_posts:
  enabled: true
  limit: 5# leave blank to include all the blog posts
---
<header class="mb-3">
    <hr>
    <h3>Noteworthy projects</h3>
    <hr>
</header>
<p>
A List of noteworthy projects that i ahve been working on or are working on, all projects are hosted on GitHub, but some of them are private.
</p>

<ul class="list-group list-group-flush">
    {% for entry in site.data.projects %}
        <li class="list-group-item pb-4">
            <h5>{{ entry.title }}</h5>
            <h6>Core functions:</h6>
            <p>{{ entry.description }}</p>
            <ul>
                {% for item in entry.functions %}
                    <li>{{ item.function }}</li>
                {% endfor %}
            </ul>

            <br/>
            <h6>Project links:</h6>
            <ul>
            {% if entry.production_url %}
                <li><a target="_blank" href="{{ entry.production_url }}">Production</a></li>
            {% endif %}
            {% if entry.source_url %}
                <li><a target="_blank" href="{{ entry.source_url }}">Source</a></li>
            {% endif %}
            {% if entry.wiki_url %}
                <li><a target="_blank" href="{{ entry.wiki_url }}">Wiki</a></li>
            {% endif %}
            </ul>
        </li>
    {% endfor %}
</ul>
