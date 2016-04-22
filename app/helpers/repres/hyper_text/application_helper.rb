module Repres::HyperText::ApplicationHelper

  def library_enabled?(name, options)
    defined?(options) && options.try(:[], name).present?
  end

  def library_version(name, default_version, options)
    defined?(options) ? options.try(:[], name).try(:[], :version)||default_version : default_version
  end

end
