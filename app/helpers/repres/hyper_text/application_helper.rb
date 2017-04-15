##
# Application Helper 是为 HTML 页面生成标签的视图辅助模块。

module Repres::HyperText::ApplicationHelper

  ##
  # 以 name 对应的值为键从 options 这个 Hash 中获取对应的值。
  def library_enabled?(name, options)
    defined?(options) && options.try(:[], name).present?
  end

  ##
  # 以 name 对应的值为键从 options 这个 Hash 中获取对应的版本号。
  # 如果 options 为空，或者 options 中没有指定️版本号，则返回 default_version 对应的版本号。如：
  # library_version 'bootstrap', '3.0', {}
  def library_version(name, default_version, options)
    defined?(options) ? options.try(:[], name).try(:[], :version)||default_version : default_version
  end

  ##
  # 呈现 icon 相关的 HTML 代码。用于 <head></head> 之中。如：
  # <head>
  #   <%= hyper_text_icon %>
  # </head>
  def hyper_text_icon(options = {})
    render partial: 'repres/hyper_text/icon', locals: { options: options }
  end

  ##
  # 呈现 meta 相关的 HTML 代码。用于 <head></head> 之中。如：
  # <head>
  #   <%= hyper_text_meta %>
  # </head>
  def hyper_text_meta(options = {})
    render partial: 'repres/hyper_text/meta', locals: { options: options }
  end

  ##
  # 呈现 script 相关的 HTML 代码。用于 <body></body> 结束之前。如：
  # <body>
  #   <header></header>
  #   <main></main>
  #   <footer></footer>
  #   <%= hyper_text_script %>
  # </body>
  def hyper_text_script(options = {})
    render partial: 'repres/hyper_text/script', locals: { options: options }
  end

  ##
  # 呈现 style 相关的 HTML 代码。用于 <head></head> 结束之前。如：
  # <head>
  #   <title>Page Title</title>
  #   <%= hyper_text_style %>
  # </head>
  def hyper_text_style(options = {})
    render partial: 'repres/hyper_text/style', locals: { options: options }
  end

  ##
  # 获取 JS 库或 CSS 库的 CDN 域名。如果没有指定 CDN 域名，则采用系统缺省的 CDN 域名。
  def domain_name(name, options)
    defined?(options) ? options.try(:[], name).try(:[], :cdn)||Repres::HyperText::CDN : Repres::HyperText::CDN
  end

end
