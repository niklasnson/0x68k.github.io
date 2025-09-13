---
layout: page
title: ideas
permalink: /ideas/
resource: true
latest_posts:
  enabled: true
  limit: 5# leave blank to include all the blog posts
---
<header class="mb-3">
    <hr>
    <h3>Ideas im currently exploring</h3>
    <hr>
</header>

If you are intrested in one of the topics, please reach out!

{% for idea in site.data.ideas %}
<div class="card mb-3">
    <div class="card-header">
        <h6 class="card-title py-2 my-2">{{ idea.title }}</h6>
    </div>
    <div class="card-body py-3">
        {% if idea.description %} <span><strong>Description:</strong> {{ idea.description }}</span><br> {% endif %}
        {% if idea.project %} <span><strong>Project:</strong> {{ idea.project }}</span> {% endif %}
    </div>
</div>
{% endfor %}



