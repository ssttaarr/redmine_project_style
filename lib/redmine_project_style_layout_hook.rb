class RedmineProjectStyleLayoutHook < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context = {})
    if context[:project]
      stylesheet = context[:project].identifier.to_s() + ".css"
      javascript = context[:project].identifier.to_s() + ".js"

      (stylesheet_link_tag stylesheet, :plugin => "redmine_project_style", :media => "screen") + (javascript_include_tag javascript, :plugin => "redmine_project_style")
    end
  end
end