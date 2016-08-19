module Repres::HyperText::ApplicationHelper

  def library_enabled?(name, options)
    defined?(options) && options.try(:[], name).present?
  end

  def library_version(name, default_version, options)
    defined?(options) ? options.try(:[], name).try(:[], :version)||default_version : default_version
  end

  def hyper_text_icon(options = {})
    render partial: 'repres/hyper_text/icon', locals: { options: options }
  end

  def hyper_text_meta(options = {})
    render partial: 'repres/hyper_text/meta', locals: { options: options }
  end

  def hyper_text_script(options = {})
    render partial: 'repres/hyper_text/script', locals: { options: options }
  end

  def hyper_text_style(options = {})
    render partial: 'repres/hyper_text/style', locals: { options: options }
  end

end
