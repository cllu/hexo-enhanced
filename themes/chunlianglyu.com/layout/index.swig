{% for post in page.posts %}
  {% include "_partial/article.swig" with {post: post, index: true} %}
{% endfor %}

{#{% if page.total > 1 %}#}
{#<nav id="page-nav">#}
{#  <%- paginator({#}
{#  prev_text: '&laquo; Prev',#}
{#  next_text: 'Next &raquo;'#}
{#  }) %>#}
{#</nav>#}
{#{% endif %}#}