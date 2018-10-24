---
title: Readme
subtitle:
layout: page
permalink: /readme
---

GamePlan.global
===============


GamePlan.global site based on Jekyll using Boostrap, SASS and jQuery.


## Structure

The layout and the content is separated. 
The partials (_includes) contain the content related variables as the first elements
~~~
{% assign title = include.title | default: "Start your free trial today!" %}
{% assign button_title = include.button_title | default: "Free trial" %}
{% assign button_url = include.button_url | default: "/go/sign-up" %}
~~~

These values are referenced in the layout like this:

~~~
<div class="row">
  <div class="col-8 d-md-flex">
    <h2 class="h1 text-white mx-md-5">
      {{ title }}
    </h2>
  </div>
  <div class="col-4 text-center">
    <a href="{{ button_url }}" class="btn btn-white btn-rounded mt-4 mt-md-0 u-fs-26 px-4">
      {{ button_title }}
    </a>
  </div>
</div>
~~~

Additionally iterable information is stored in data (_data) files:
~~~
social_media:
  - title: facebook
    url: https://www.facebook.com/gameplan2015/
  - title: twitter
    url: https://twitter.com/gameplan2015
  - title: youtube
    url: https://www.youtube.com/channel/UCODk0c1AkMOoz68Di3VGEqg
  - title: linkedin
    url: https://www.linkedin.com/company/gameplan-global-solutions-inc-
~~~

The information is then added to the layout as follows:
~~~
{% for social in site.data.social.social_media %}
<a href="{{ social.url }}">
  <i class="fa fa-{{ social.title }}-square social-text-{{ social.title }} u-fs-32 px-1"></i>
</a>
{% endfor %}
~~~

The file structure:
- _layouts - Layouts used as a skeleton for the pages. The default.html serves as a base.
- _includes - Contains partial files used within the pages. 
- _pages - All the pages used on the site are here.
- _data - Data files for iteratable information used within the _include files. The navigation and social media is here as well.



## Dependencies
- Uses [Yarn](https://github.com/yarnpkg/yarn) to manage libraries, assets, and utilities.
  - Bootstrap 4.
  - Font Awesome.
  - Fancybox


## Commands

### Build

To build the site with statis resources. Use this option for automatic deployment to netflify and other services.
~~~ bash
make build
~~~

### Serve
To serve the site with jekyll
~~~ bash
make serve
~~~


