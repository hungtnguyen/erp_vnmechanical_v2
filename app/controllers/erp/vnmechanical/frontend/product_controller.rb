module Erp
  module Vnmechanical
    module Frontend
      class ProductController < Erp::Frontend::FrontendController
        #def category
        #  @menu = Erp::Menus::Menu.find(params[:menu_id])
        #  @related_menus = @menu.related_menus.limit(5)
        #  @products = @menu.get_products_for_categories(params).paginate(:page => params[:page], :per_page => @menu.number_per_page)
        #  @meta_keywords = @menu.meta_keywords
        #  @meta_description = @menu.meta_description
        #
        #  if request.xhr?
        #    render layout: nil
        #  end
        #end
        #
        #def detail
        #  @product = Erp::Products::Product.find(params[:product_id])
        #  @meta_keywords = @product.meta_keywords.to_s
        #  @meta_description = @product.meta_description.to_s
        #  @menu = params[:menu_id].present? ? Erp::Menus::Menu.find(params[:menu_id]) : @product.find_menu
        #  if @menu.present?
        #    @meta_keywords += @meta_keywords.present? ? ',' + @menu.meta_keywords : @menu.meta_keywords
        #    @meta_description += @meta_description.present? ? @meta_description : @meta_description
        #  end
        #end
      end
    end
  end
end