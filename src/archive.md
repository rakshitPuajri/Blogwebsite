---
layout: base.njk
title: Archive
---

# All Articles

<div class="archive">
    {% for post in collections.blog %}
        <article class="archive-item">
            <h3><a href="{{ post.url }}">{{ post.data.title }}</a></h3>
            <time datetime="{{ post.data.date | htmlDateString }}">{{ post.data.date | readableDate }}</time>
            <p>{{ post.data.description }}</p>
        </article>
    {% endfor %}
</div>
