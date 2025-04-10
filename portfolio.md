---
layout: default
title: Portfolio
permalink: /portfolio/
---

# Portfolio

{% for post in site.posts %}
<div class="card" style="display: inline-block; margin: 1rem; width: 300px;">
  <img src="{{ post.image }}" alt="Project image" style="width:100%; height:200px;">
  <div class="card-content">
    <h3>{{ post.title }}</h3>
    <p>{{ post.excerpt }}</p>
    <a href="{{ post.url }}" class="button">See More</a>
  </div>
</div>
{% endfor %}
