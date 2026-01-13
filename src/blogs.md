---
layout: base.njk
title: Blogs
---

# All Articles

<div class="blogs">
    {% for post in collections.blog %}
        <article class="blogs-item">
            <a class="blogs-link" href="{{ post.url }}">
                <h3>{{ post.data.title }}</h3>
                <time datetime="{{ post.data.date | htmlDateString }}">{{ post.data.date | readableDate }}</time>
                <p>{{ post.data.description }}</p>
            </a>
        </article>
    {% endfor %}
</div>