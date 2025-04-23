---
layout: default
lang: en
title: Blog
permalink: /blog/
---

# Blog
<div class="card-grid">
  <p>Total posts found: {{ site.blogposts | size }}<br></p>
  
  {% for post in site.blogposts %}
    <div class="card">
      <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
      <p><small>{{ post.date | date: "%B %d, %Y" }}</small></p>
      <p>{{ post.excerpt }}</p>
    </div>
  {% endfor %}
</div>
