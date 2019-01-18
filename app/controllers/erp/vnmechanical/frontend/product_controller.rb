module Erp
  module Vnmechanical
    module Frontend
      class ProductController < Erp::Frontend::FrontendController
        def category
          if params[:menu_id].present?
            @menu = Erp::Menus::Menu.find(params[:menu_id])
            @related_menus = @menu.related_menus.limit(5)
            @products = @menu.get_products_for_categories(params).paginate(:page => params[:page], :per_page => @menu.number_per_page)
            @meta_keywords = @menu.meta_keywords
            @meta_description = @menu.meta_description
          else
            @products = Erp::Products::Product.get_active.paginate(:page => params[:page], :per_page => 9)
          end
          @bestseller_products = Erp::Products::Product.get_bestseller_products
        end
        
        def detail
          @product = Erp::Products::Product.find(params[:product_id])
          @deal_products = Erp::Products::Product.get_deal_products
          @menu = params[:menu_id].present? ? Erp::Menus::Menu.find(params[:menu_id]) : @product.find_menu
          #@related_events = @product.get_related_events(Time.now)
          
          @meta_keywords = @product.meta_keywords
          @meta_description = @product.meta_description
          
          if @menu.present?
            if !@product.meta_keywords.present?
              @meta_keywords = @menu.meta_keywords
            end
            
            if !@product.meta_description.present?
              @meta_description = @menu.meta_description
            end
          end
          #@total_comments = @product.comments.where(parent_id: nil).where(archived: false).count
        end
      end
    end
  end
end