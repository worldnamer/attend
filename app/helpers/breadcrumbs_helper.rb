module BreadcrumbsHelper
  def breadcrumbs(hash_of_breadcrumbs_path)
    content_tag :ul, :class => "breadcrumb" do
      hash_of_breadcrumbs_path.map do |text, link_target| 
        concat (
          if link_target == 1
            content_tag :li, text, :class => "active"
          else
            content_tag :li do
              concat link_to text, link_target
              concat content_tag :span, "/", :class =>"divider"
            end
          end
        )
      end
    end
  end
end
