---
layout: default
title: Portfolio
permalink: /portfolio/
---

# Portfolio
<div class="card-grid">
  {% for post in site.publications %}
    <div class="card">
      <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
      <p><small>{{ post.date | date: "%B %d, %Y" }}</small></p>
      <p>{{ post.excerpt }}</p>
    </div>
  {% endfor %}
</div>

<!-- Links fixos de projetos -->
<a class="card" href="https://github.com/usuario/sphere-irdis-exo-satellite-survey" target="_blank">
  <h3>SPHERE/IRDIS Exo-satellite Survey</h3>
  <p>Using direct imaging to search for exomoons and companions around brown dwarfs.</p>
</a>

<a class="card" href="https://github.com/usuario/prey-predator-simulator" target="_blank">
  <h3>Prey-Predator Simulator</h3>
  <p>A pygame simulation with simple agents, interaction logs, and analysis tools.</p>
</a>
