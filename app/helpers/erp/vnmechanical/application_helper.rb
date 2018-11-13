module Erp
  module Vnmechanical
    module ApplicationHelper
      # page title helper
      def title(page_title)
        content_for :title, page_title.to_s
      end
      
      # menu link helper
      def menu_link(menu)
        erp_vnmechanical.product_listing_path(menu_id: menu.id, title: url_friendly(menu.name))
      end
      
      # product link helper
      def product_link(product)
        erp_vnmechanical.product_detail_path(product_id: product.id, title: url_friendly(product.name))
      end
      
      # blog link
      def blog_link(blog)
        erp_vnmechanical.blog_detail_path(title: url_friendly(blog.name), blog_id: blog.id)
      end
      
      # article link
      def service_link(service)
        erp_vnmechanical.service_detail_path(service.id, title:  url_friendly(service.name))
      end
      
      # display full address
      def full_address(contact)
        str = []
        str << contact.address if contact.address.present?
        str << contact.district_name if contact.district_name.present?
        str << contact.state_name if contact.state_name.present?
        str.join(", ")
      end
      
      # user avatar
      def article_image(thumb, size)
        if size == 'large'
          thumb.present? ? thumb : url_for('/songhanhcts/images/blog/848_309.png')
        elsif size == 'medium'
          thumb.present? ? thumb : url_for('/songhanhcts/images/blog/270_175.png')
        elsif size == 'small'
          thumb.present? ? thumb : url_for('/songhanhcts/images/blog/75_75.png')
        end
      end
    end
  end
end
