---
title: "Team | Evidence-based Comparative Politics Research Group | University of Münster and Aarhus University"
layout: gridlay
excerpt: "Team | Evidence-based Comparative Politics Research Group | University of Münster and Aarhus University"
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