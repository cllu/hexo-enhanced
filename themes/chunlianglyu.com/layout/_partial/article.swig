<article id="{{ post.layout }}-{{ post.slug }}" class="article article-type-{{ post.layout }}" itemscope
         itemprop="blogPost">
  <div class="article-meta">

    <!-- date -->
    <a href="{{ post.path }}" class="article-date">
      <time datetime="{{ post.date }}" itemprop="datePublished">{{ post.date|date('Y-m-d') }}</time>
    </a>

  </div>
  <div class="article-inner">
    {% if post.link or post.title %}
      <header class="article-header">

        {% if post.link %}
          <h1 itemprop="name">
            <a class="article-title" href="{{ post.link }}" target="_blank" itemprop="url">{{ post.title }}</a>
          </h1>
        {% elif post.title and index %}
          <h1 itemprop="name">
            <a class="article-title" href="{{ post.path }}">{{ post.title }}</a>
          </h1>
        {% else %}
          <h1 class="article-title" itemprop="name">
            {{ post.title }}
          </h1>
        {% endif %}

      </header>
    {% endif %}

    <div class="article-entry" itemprop="articleBody">
      {% if post.excerpt and index %}
        {{ post.excerpt }}
        <p class="article-more-link">
          <a href="{{ post.path }}#more">Read More</a>
        </p>
      {% else %}
        {{ post.content }}
      {% endif %}
    </div>

    <footer class="article-footer">
      <a data-url="<%- post.permalink %>" data-id="<%= post._id %>" class="article-share-link">Share</a>

      {% if post.comments and config.disqus_shortname %}
        <a href="{{ post.permalink }}#disqus_thread" class="article-comment-link">Comments</a>
      {% endif %}

      <!-- tags -->
      {% if post.tags and post.tags.length %}
      {% endif %}

    </footer>
  </div>

  <!-- nav -->
  {% if not index and (post.prev or post.next) %}
    <nav id="article-nav">
      {% if post.prev %}
        <a href="{{ post.prev.path }}" id="article-nav-newer" class="article-nav-link-wrap">
          <strong class="article-nav-caption">Newer</strong>

          <div class="article-nav-title">
            {% if post.prev.title %}
              {{ post.prev.title }}
            {% else %}
              (no title)
            {% endif %}
          </div>
        </a>
      {% endif %}
      {% if post.next %}
        <a href="{{ post.next.path }}" id="article-nav-older" class="article-nav-link-wrap">
          <strong class="article-nav-caption">Older</strong>

          <div class="article-nav-title">{{ post.next.title }}</div>
        </a>
      {% endif %}
    </nav>
  {% endif %}

</article>

