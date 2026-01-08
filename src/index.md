---
layout: base.njk
title: Home
---

<div class="hero">
    <h2>Welcome to My Blog</h2>
    <p>Discover articles about web development, technology, and life.</p>
</div>

<section class="recent-posts">
    <h2>Recent Articles</h2>
    <div class="posts-list">
        {% for post in collections.blog | slice(0, 6) %}
            <article class="post-preview">
                <header>
                    <h3><a href="{{ post.url }}">{{ post.data.title }}</a></h3>
                    <time datetime="{{ post.data.date | htmlDateString }}">{{ post.data.date | readableDate }}</time>
                </header>
                <p>{{ post.data.description }}</p>
                <a href="{{ post.url }}" class="read-more">Read More →</a>
            </article>
        {% endfor %}
    </div>
    {% if collections.blog.length > 6 %}
        <a href="/archive/" class="view-all">View All Articles →</a>
    {% endif %}
</section>
