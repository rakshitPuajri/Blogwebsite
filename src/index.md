---
layout: base.njk
title: Home
---

<div class="hero">
    <h2>Welcome to My Blog</h2>
    <p>Discover articles about latest topics in technology, and life.</p>
</div>

<section class="recent-posts">
    <h2>Latest Articles</h2>
    <div class="posts-list">
{% for post in collections.blog %}
<article class="post-preview">
    <a class="post-link" href="{{ post.url }}">
        <header>
            <h3>{{ post.data.title }}</h3>
            <time datetime="{{ post.data.date | htmlDateString }}">{{ post.data.date | readableDate }}</time>
        </header>
        <p>{{ post.data.description }}</p>
        <span class="read-more">Read More →</span>
    </a>
</article>
{% endfor %}
    </div>
    {% if collections.blog.length > 3 %}
        <a href="/blogs/" class="view-all">View All Blogs →</a>
    {% endif %}
</section>
