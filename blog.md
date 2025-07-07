---
layout: default
title: menu.blog
namespace: blog
permalink: /blog/
permalink_es: /blog/
permalink_pt: /blog/
---

# Blog
<div class="card-grid">
{% assign lang = site.lang | default: site.default_lang | downcase %}
<!-- Total posts found in all languages: -->
  <p>{% t total.posts %} {{ site.blogposts | size }}<br></p>
  <p>Total posts found in current language: {{ site.blogposts | where: "lang", lang | size }}<br></p>
  
  <p><strong>Current lang: {{ lang }}</strong></p>


  {% for post in site.blogposts %}
    {% if post.lang == lang %}
      <div class="card">
        <h3>
          <a href="{{ post.url | remove: "/en/" | prepend: site.baseurl }}">{{ post.title }}</a> 
        </h3>
        <p>{{ post.url| remove: site.default_lang | prepend: site.baseurl }}</p>
        <p><small>{{ post.date | date: "%B %d, %Y" }}</small></p>
        <p>{{ post.excerpt }}</p>
        <p><strong>site.baseurl:</strong> {{ site.baseurl }}</p>
        <p><strong>post.url:</strong> {{ post.url }}</p>
        <p><strong>post.lang:</strong> {{ post.lang }}</p>
        <!-- <p><strong>page.lang:</strong> {{ page.lang }}</p> -->
        <!-- <p><strong>site.default_lang:</strong> {{ site.default_lang }}</p> -->
        <p>{{ post.url | remove: site.default_lang | relative_url }}">{{ post.title }}</p>
      </div>
    {% endif %}
  {% endfor %}
</div>

