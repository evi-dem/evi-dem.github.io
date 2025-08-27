---
title: "News | EVIDEM - Evidence on Democracy and Markets Lab | University of Münster"
layout: textlay
excerpt: "News | EVIDEM - Evidence on Democracy and Markets Lab | University of Münster"
sitemap: true
permalink: /allnews.html
---

# News

{% for article in site.data.news %}

<p>{{ article.date }} <br>
<em>{{ article.headline }}</em></p>
{% endfor %}
