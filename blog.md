---
layout: default
lang: en
title: Blog
permalink: /blog/
---

# Blog
<div class="card-grid">
  
  {% for post in site.posts %}
  <p>Total posts found: {{ site.posts | size }}</p>
    <div class="card">
      <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
      <p><small>{{ post.date | date: "%B %d, %Y" }}</small></p>
      <p>{{ post.excerpt }}</p>
    </div>
  {% endfor %}
</div>
