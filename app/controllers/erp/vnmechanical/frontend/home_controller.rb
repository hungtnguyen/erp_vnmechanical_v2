module Erp
  module Vnmechanical
    module Frontend
      class HomeController < Erp::Frontend::FrontendController
        def index
          @sliders = Erp::Banners::Banner.get_home_sliders.order('erp_banners_banners.custom_order asc')
          @newest_products = Erp::Products::Product.all.order('created_at DESC').limit(10)
          @newest_blogs = Erp::Articles::Article.newest_articles(3)
          #@testimonials = Erp::Testimonials::Testimonial.get_testimonials
        end
      end
    end
  end
end