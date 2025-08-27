---
title: "Team | EVIDEM - Evidence on Democracy and Markets Lab (Democracy and Markets Lab) | University of Münster"
layout: gridlay
excerpt: "Team | EVIDEM - Evidence on Democracy and Markets Lab (Democracy and Markets Lab) | University of Münster"
sitemap: true
permalink: /team/
---

# Group Members

## Principal Investigators

{% assign pis = site.data.team_members | where: "group", "pi" %}
{% include team_grid.html members=pis %}

## Staff

{% assign staff = site.data.team_members | where: "group", "staff" %}
{% include team_grid.html members=staff %}