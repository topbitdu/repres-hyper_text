# Repres HyperText 超文本资源表现引擎

[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/gems/repres-hyper_text/frames)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)

[![Gem Version](https://badge.fury.io/rb/repres-hyper_text.svg)](https://badge.fury.io/rb/repres-hyper_text)
[![Dependency Status](https://gemnasium.com/badges/github.com/topbitdu/repres-hyper_text.svg)](https://gemnasium.com/github.com/topbitdu/repres-hyper_text)

Repres (REsource PRESentation) is a series of resource presentation engines. The Hyper Text resource presentation engine includes HyperText-based resource presentation templates & snippets.
Repres (资源表现)是一系列的资源表现引擎。超文本资源表现引擎包括基于超文本的资源表现模版和片段。



## Recent Update

Check out the [Road Map](ROADMAP.md) to find out what's the next.
Check out the [Change Log](CHANGELOG.md) to find out what's new.



## Usage in Gemfile

```ruby
gem 'repres-hyper_text'
```



## Include the Helper in your Application Controller before Render the Style or Script

```ruby
helper Repres::HyperText::ApplicationHelper
```



## Render the Pre-defined Partials

```erb
<html>

  <head>

    <%= render partial: 'repres/hyper_text/meta' %>
    <!-- or the following line works identically -->
    <%= hyper_text_meta %>

    <%= render partial: 'repres/hyper_text/icon' %>
    <!-- or the following line works identically -->
    <%= hyper_text_icon %>


    <%= render partial: 'repres/hyper_text/style', locals: { options: { 'font-awesome' => true } } %>
    <!-- or the following line works identically -->
    <%= hyper_text_style 'font-awesome' => true %>

  </head>

  <body>
    <div id='main'></div>
    <div id='alpha-dialog'></div>
    <div id='beta-dialog'></div>
    <div id='gammar-dialog'></div>

    <%= render partial: 'repres/hyper_text/script', locals: { options: { jquery: true } } %>
    <!-- or the following line works identically -->
    <%= hyper_text_script jquery: true %>

  </body>

</html>
```

### Render the Meta

The Meta partial includes the HTML meta tags for HTML 5.
```erb
<%= render partial: 'repres/hyper_text/meta' %>
<!-- or the following line works identically -->
<%= hyper_text_meta %>
```

The source codes of the Meta partial:
```html
<meta charset="UTF-8" />
<meta name="format-detection" content="telephone=no" />
<meta name="msapplication-tap-highlight" content="no" />
<meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, height=device-height" />
<meta name="renderer" content="webkit" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
```

### Render the Favorite Icon

The Icon partial includes the HTML link tags for Favorite Icons.
```erb
<%= render partial: 'repres/hyper_text/icon',
           locals: {
             options: {
               safari_mask_icon_color:            '#5bbad5',
               microsoft_application_title_color: '#da532c',
               theme_color:                       '#ffffff'
             }
           }
%>
<!-- or the following line works identically -->
<%= hyper_text_icon safari_mask_icon_color: '#5bbad5', microsoft_application_title_color: '#da532c', theme_color: '#ffffff' %>
```

### Render the Script

The Script partial includes the HTML script tags. The [Boot CDN](http://cdn.bootcss.com/) server is supported by default. However, the :cdn option could be passed in to support other CDN servers. The CDN servers must syncrhonize with [cdnjs](https://github.com/cdnjs/cdnjs).

The following code snippet does not load any JavaScript library.
```erb
<%= render partial: 'repres/hyper_text/script' %>
<!-- or the following line works identically -->
<%= hyper_text_script %>
```

The following code snippet loads the latest jQuery.
```erb
<%= render partial: 'repres/hyper_text/script', locals: { options: { jquery: true } } %>
<!-- or the following line works identically -->
<%= hyper_text_script jquery: true %>
```

The following code snippet loads the jQuery with the given version.
```erb
<%= render partial: 'repres/hyper_text/script', locals: { options: { jquery: { version: '2.2.0', cdn: 'cdn.server.com' } } } %>
<!-- or the following line works identically -->
<%= hyper_text_script jquery: { version: '2.2.0', cdn: 'cdn.server.com' } %>
```

The following JavaScript libraries are switchable, and the version can be configurable:
- :modernizr
- :jquery
- :buttons

### Render the Style

The Style partial includes the HTML style tags. The [Boot CDN](http://cdn.bootcss.com/) server is supported by default. However, the :cdn option could be passed in to support other CDN servers. The CDN servers must syncrhonize with [cdnjs](https://github.com/cdnjs/cdnjs).

The following code snippet does not load any CSS library.
```erb
<%= render partial: 'repres/hyper_text/style' %>
<!-- or the following line works identically -->
<%= hyper_text_style %>
```

The following code snippet loads the latest Font Awesome.
```erb
<%= render partial: 'repres/hyper_text/script', locals: { options: { :'font-awesome' => true } } %>
<!-- or the following line works identically -->
<%= hyper_text_style :'font-awesome' => true %>
```

The following code snippet loads the Font Awesome with the given version.
```erb
<%= render partial: 'repres/hyper_text/style', locals: { options: { :'font-awesome' => { version: '4.4.0', cdn: 'cdn.server.com' } } } %>
<!-- or the following line works identically -->
<%= hyper_text_style :'font-awesome' => { version: '4.4.0', cdn: 'cdn.server.com' } %>
```

The following CSS libraries are switchable, and the version can be configurable:
- :'font-awesome'
- :buttons
- :'animate.css'



## RSpec examples

```ruby
# spec/models/repres_spec.rb
require 'repres/hyper_text/models_rspec'

# spec/types/repres_spec.rb
require 'repres/hyper_text/types_rspec'

# spec/validators/repres_spec.rb
require 'repres/hyper_text/validators_rspec'
```
