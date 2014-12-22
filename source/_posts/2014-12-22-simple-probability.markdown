---
layout: post
title: "Простые вероятности"
date: 2014-12-22 19:31:20 +0400
comments: true
categories: 
---
Дано n игральных костей (1 &le; n). Найдем вероятность выпадения ровно m костей (0 &le; m &le; k) с конкретный номиналом k (1 &le; k &le; 6).
Через Аi обозначим событие "При бросании i-й кости выпал наминал k", 



<img src="http://latex.codecogs.com/gif.latex?\left&space;(\frac{1}{6}&space;\right&space;)^{m}\left&space;(\frac{5}{6}&space;\right&space;)^{n-m}P\binom{n}{m,n-m}=\frac{5^{n-m}}{6^{n}}\frac{n!}{m!(n-m)!}" title="\left (\frac{1}{6} \right )^{m}\left (\frac{5}{6} \right )^{n-m}P\binom{n}{m,n-m}=\frac{5^{n-m}}{6^{n}}\frac{n!}{m!(n-m)!}" />
