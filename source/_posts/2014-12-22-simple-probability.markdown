---
layout: post
title: "Простые вероятности"
date: 2014-12-22 19:31:20 +0400
comments: true
categories:
---
Дано n игральных костей (1 &le; n). Так же дано некое множество номиналов, мощностью k (1 &le; k &le; 6).
Найдем вероятность выпадения ровно m костей (0 &le; m &le; k) с номиналами из заданного множества.

Искомая вероятность надодится по формуле Бернулли:



<img src="http://latex.codecogs.com/gif.latex?\left(\frac{k}{6}\right )^{m}\left(1-\frac{k}{6}\right )^{n-m}C_{n}^{m}" />

{% include table_simple_probability.html data=site.data.simple_probability htitle="Количество костей с заданным номиналом" vtitle="Количество костей"%}

{% include table_simple_probability.html data=site.data.simple_cumm_probability htitle="Количество костей с заданным номиналом" vtitle="Количество костей"%}

{% include table_simple_probability.html data=site.data.simple_probability2 htitle="Количество костей с двумя заданными номиналами" vtitle="Количество костей"%}

{% include table_simple_probability.html data=site.data.simple_cumm_probability2 htitle="Количество костей с двумя заданными номиналами" vtitle="Количество костей"%}
