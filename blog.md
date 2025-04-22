---
layout: default
title: Blog
lang: en
permalink: /blog/
---

<h1>Blog</h1>

<ul>
  {% for post in site.posts %}
    <li>
      <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
      <small>{{ post.date | date: "%B %d, %Y" }}</small>
      <p>{{ post.excerpt | strip_html | truncate: 160 }}</p>
    </li>
  {% endfor %}
</ul>
