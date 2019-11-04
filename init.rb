require 'redmine'

Redmine::Plugin.register :redmine_extra_fields do
  name 'Redmine extra custom field formats'
  author 'Soluto sistemas'
  description 'The extra custom field formats for redmine'
  version '0.0.1'
  url 'https://github.com/solutosoft/redmine_extra_fields'
  author_url 'https://slto.com.br/'

  requires_redmine version_or_higher: '2.3'
end

ActionDispatch::Callbacks.to_prepare do
  require_relative 'lib/password_custom_field_format'
end
