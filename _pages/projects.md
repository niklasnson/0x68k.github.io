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
A List of active projects that I am currently working on, projects are hosted on GitHub, but some of them are private.
</p>

{% for entry in site.data.project %}
<p>{{ entry.title }} aa</p>
{% endfor %}



<ul class="list-group list-group-flush">
  <li class="list-group-item pb-4">
    <h5><strong>Epilogue</strong> - notes for everyone.</h5>
    <p>EPILOGUE is a web platform where you can create, organize and share notes and ideas. Sprung out of a need to share notes for projects with others i built this platform. Application will be open source.</p>
    <h6>Core functions</h6>
    <ul>
        <li>Realtime updating notes.</li>
        <li>API interaction from other services.</li>
    </ul>
    <h6 class="mt-3">Project links</h6>
    <ul>
        <li><a href="https://github.com/niklasnson/epilogue.rb/">Sourcecode</a></li>
        <li><a href="https://github.com/niklasnson/epilogue.rb/wiki">Wiki</a></li>
    </ul>
  </li>

  <li class="list-group-item mt-4 pb-4">
    <h5><strong>Idofun.com</strong> -  a social sharing platform</h5>
    <p>IDOFUN.COM is a social photosharing platform with high privacy in mind. Built to be fast and responsive, one version for all devices and screen sizes. The platform includes private posts, messages, muting and blocking users.</p>
    <h6>Core functions</h6>
    <ul>
        <li>Real-time publishing of photos, comments and likes.</li>
        <li>API interaction with other services.</li>
        <li>Inbound emails handling - answer comments by replying to email.</li>
        <li>Blocking or muting other users.</li>
        <li>Share photos in cirkles.</li>
        <li>Challange and competetions.</li>
    </ul>
    <h6 class="mt-3">Project links</h6>
    <ul>
        <li><a href="https://github.com/niklasnson/idofun.com/">Sourcecode</a></li>
        <li><a href="https://github.com/niklasnson/idofun.com/wiki">Wiki</a></li>
    </ul>
  </li>

  <li class="list-group-item mt-4">
    <h5><strong>Kroppsfabriken</strong> - website for the club Kroppsfabriken</h5>
    <p>KROPPSFABRIKEN is a fetish club with a strict dress code, which must be followed to gain entry. We want to offer a safe haven for you to live out your fetishes together with other fetishists. Focusing on latex, rubber and electronic music. Parts of the site is protected and you need to be logged in to view photos and but tickets to event.</p>
    <h6>Core functions</h6>
    <ul>
    <li>Integration with PayPal API.</li>
        <li>Advanced ticket system with entrance interface</li>.
        <li>Transfer tickets to other members.</li>
        <li>IBlog with posts and drafts.</li>
    </ul>
    <h6 class="mt-3">Project links</h6>
    <ul>
        <li><a href="https://github.com/niklasnson/nemesis-on-rails/">Sourcecode</a></li>
        <li><a href="https://github.com/niklasnson/nemesis-on-rails/wiki">Wiki</a></li>
    </ul>
  </li>
</ul>


