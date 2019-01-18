module Erp
  module Vnmechanical
    module Frontend
      class HomeController < Erp::Frontend::FrontendController
        def index
          @sliders = Erp::Banners::Banner.get_home_sliders.order('erp_banners_banners.custom_order asc')
          #@services = Erp::Articles::Article.get_services(params)
          @services = Erp::Articles::Category.get_categories_by_alias_service
          @popular_products = Erp::Products::Product.get_bestseller_products
          #@testimonials = Erp::Testimonials::Testimonial.get_testimonials
          @newest_blogs = Erp::Articles::Article.newest_articles(3)
        end
      end
    end
  end
end