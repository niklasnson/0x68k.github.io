---
layout: page
title: Resume
permalink: /resume/
resource: true
latest_posts:
  enabled: true
  limit: 5# leave blank to include all the blog posts
description: "Niklas Nilsson - Curriculum vitae"
---

<script>
  function JobDateDiff (start, end) {
      var daysDiff = (new Date(end).getTime() -  new Date(start).getTime()) / 86400000;

      var years = Math.floor(daysDiff / 365.25);
      var months = Math.ceil(daysDiff % 365.25 / 30.4375);
      if (months == 12) { months = 0; years++; }

      var returnText = "";
      if (years == 1) { returnText += `${years} year ` }
      if (years > 1) { returnText += `${years} years ` }
      if (months == 1) { returnText += `${months} month ` }
      if (months > 1) { returnText += `${months} months ` }
      returnText = returnText.trim();

      document.write(returnText);
  }
</script>

<header class="mb-3">
    <hr>
    <h4>Curriculum vitae</h4>
    <hr>
</header>

<p class="my-4">
    Some highĺights below; for full CV check my <a href="https://www.linkedin.com/in/niklas-nson/">LinkedIn</a>.
    </p>

##### Experience
<hr>

<ul class="list-group list-group-flush">
    {% for entry in site.data.cv %}
      <li class="list-group-item d-flex align-items-start">
        <div class="me-4">
        <img width="48" src="{{ entry.logo }}">
        </div>
        <div>
            <h5>{{ entry.title }}</h5>
            <h6>{{ entry.company }}</h6>

            {%- assign jobStartDate = entry.start | date: "%F" -%}
            {%- assign jobEndDate = entry.end | default: 'now' | date: "%F" -%}

            <p>
                <span>{{ entry.start | date: "%b, %Y" }}</span>
                <span> &ndash; </span>
                <span>{{ entry.end | date: "%b, %Y" | default: "Present" }}</span>
                <span> &bull; </span>
                <span><script>JobDateDiff("{{ jobStartDate }}","{{ jobEndDate }}")</script></span>
            </p>
            <p>{{ entry.description }}</p>
        </div>
      </li>
    {% endfor %}
</ul>

##### Education
<hr>

<ul class="list-group list-group-flush">
    {% for entry in site.data.education %}
      <li class="list-group-item d-flex align-items-start">
        <div class="me-4">
        <img width="48" src="{{ entry.logo }}">
        </div>
        <div>
            <h5>{{ entry.degree }}</h5>
            <h6>{{ entry.uni }}</h6>
            <h6>{{ entry.year }}</h6>
            <p>{{ entry.summary }}</p>
        </div>
      </li>
    {% endfor %}
</ul>

