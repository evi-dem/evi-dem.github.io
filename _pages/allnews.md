---
title: "News | Evidence-based Comparative Politics Research Group | University of Münster and Aarhus University"
layout: textlay
excerpt: "News | Evidence-based Comparative Politics Research Group | University of Münster and Aarhus University"
sitemap: true
permalink: /allnews.html
---

# News

{% for article in site.data.news %}

<p>{{ article.date }} <br>
<em>{{ article.headline }}</em></p>
{% endfor %}
