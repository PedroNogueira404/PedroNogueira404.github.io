---
layout: default
title: menu.portfolio
namespace: portfolio
permalink: /portfolio/
permalink_es: /portfolio/
permalink_pt: /portfólio/
---
# Publications
<div class="card-grid">
{% assign lang = site.lang | default: site.default_lang | downcase %}
  <p>Total publications found in all languages: {{ site.publications | size }}<br></p>
  <p>Total publications found in current language: {{ site.publications | where: "lang", lang | size }}<br></p>
  <p><strong>Current lang: {{ lang }}</strong></p>

  {% for post in site.publications %}
    {% if post.lang == lang %}
      <div class="card">
        <h3>
          <a href="{{ post.url | remove: '/en' | prepend: site.baseurl }}">{{ post.title }}</a> 
          <!-- <a href="{{ '/' | append: post.url | prepend: site.baseurl }}">{{ post.title }}</a>         -->
        </h3>
        <p><strong>site.baseurl:</strong> {{ site.baseurl }}</p>
        <p><small>{{ post.date | date: "%B %d, %Y" }}</small></p>
        <p>{{ post.excerpt }}</p>
        <p><strong>post.url:</strong> {{ post.url }}</p>
        <p><strong>post.lang:</strong> {{ post.lang }}</p>
        <p><strong>page.lang:</strong> {{ page.lang }}</p>
        <p><strong>post.lang:</strong> {{ post.lang }}</p>
      </div>
    {% endif %}
  {% endfor %}
</div>

# Codes
<div class="card-grid">
  <p>Total codes found in all languages: {{ site.codes | size }}<br></p>
  <p>Total codes found in current language: {{ site.codes | where: "lang", lang | size }}<br></p>
  <p><strong>Current lang: {{ lang }}</strong></p>

  {% for post in site.codes %}
    {% if post.lang == lang %}
      <div class="card">
        <h3>
          <a href="{{ post.url | remove: '/en' | prepend: site.baseurl }}">{{ post.title }}</a> 
        </h3>
        <p><small>{{ post.date | date: "%B %d, %Y" }}</small></p>
        <p>{{ post.excerpt }}</p>
        <p><strong>post.url:</strong> {{ post.url }}</p>
        <p><strong>post.lang:</strong> {{ post.lang }}</p>
        <p><strong>page.lang:</strong> {{ page.lang }}</p>
        <p><strong>post.lang:</strong> {{ post.lang }}</p>
      </div>
    {% endif %}
  {% endfor %}
</div>
