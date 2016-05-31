require 'redmine'
require 'redmine_project_style_layout_hook'

Redmine::Plugin.register :redmine_project_style do
  name 'Redmine Project Style'
  author 'Yura Zaplavnov'
  description 'Allows to set a visual style per project using project identifier. (cloned from redmine_project_style and modified to make it compatible with latest version of redmine)'
  version '3.0'
  url 'https://github.com/xeagle2/redmine_project_style'
  author_url 'https://github.com/xeagle2'

  permission :redmine_project_style, {:redmine_project_style => []}, :public => true
end
