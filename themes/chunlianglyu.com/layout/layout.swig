<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>{% if page.title %}{{ page.title }} | {% endif %} {{ config.title }}</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  <link rel="alternative" href="atom.xml" title="{{ config.title }}" type="application/atom+xml">

  <link rel="icon" href="/images/favicon.ico">

  <link href="//fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet" type="text/css">

  <link href="/styles/fontawesome.css" rel="stylesheet" type="text/css">
  <link href="/styles/style.css" rel="stylesheet" type="text/css">
</head>

<body>
<div class="wrapper">

  <header class="header">
    <div class="header-wrapper">
      <h1 class="header-name">
        <a href="/">Chunliang Lyu</a>
      </h1>

      <p class="header-description">
        I am a developer and researcher from China.
        I love to make things that make life better.
        I have co-founded <a href="https://hyperlinkapp.com">Hyperlink</a>.
      </p>

      <nav class="header-nav">
        <a class="main-nav-link" href="/">Home</a>
        <a class="main-nav-link" href="/about/">About</a>
        <a class="main-nav-link" href="/projects/">Projects</a>
        <a class="main-nav-link" href="/research/">Research</a>
      </nav>

      <div class="header-social">
        <a href="/atom.xml"><i class="fa fa-rss-square"></i></a>
        <a href="https://twitter.com/chunlianglyu"><i class="fa fa-twitter"></i></a>
        <a href="https://github.com/cllu"><i class="fa fa-github"></i></a>
        <a href="https://www.linkedin.com/in/chunlianglyu"><i class="fa fa-linkedin"></i></a>
      </div>
    </div>
  </header>

  <main class="main">{{ body }}</main>

</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script src="/scripts/script.js"></script>

</body>
</html>
