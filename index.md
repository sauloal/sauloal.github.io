---
layout: page
title: Main
tagline: Main Page
---
{% include JB/setup %}


## Last Posts
<ul>
  {% for post in site.posts %}
    <li>
      {{ post.date    }}<a href="{{ post.url }}">{{ post.title }}</a> // <b>Tags</b> 
        {% for tag in post.tags %}
          {{ tag }} 
        {% endfor %}
        // <b>Excerpt:</b> {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>



<!-- {{ site.data }} -->

## Repositories
{% for repo in site.data.repos %}

### {{ repo[0] }}

{% for url in repo[1] %}
<b><a href="{{ url["html_url"] }}">{{ url["full_name"] }}</a></b> - <small>{{ url["description"] }}</small>
{% endfor %}

{% endfor %}




<!--
"name": "allbiovm",
    "full_name": "sauloal/allbiovm",
    "html_url": "https://github.com/sauloal/allbiovm",
    "description": "Virtual Machine installation files for the hack-a-thon and hands-on-session",
-->

<!-- 
## Repositories
{% for repo in site.data.githubcom.data %}

### {{ repo[0] }}
{% for cls in repo[1] %}

#### {{ cls[0] }}
{% for lnk in cls[1] %}
<li><a href="{{ site.data.githubcom._url }}/{{ lnk }}">{{ lnk }}</a></li>
{% endfor %}
{% endfor %}
{% endfor %}
-->



