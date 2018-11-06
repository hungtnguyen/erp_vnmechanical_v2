module Erp
  module Vnmechanical
    module Frontend
      class HomeController < Erp::Frontend::FrontendController
        def index
          if Erp::Core.available?("banners")
            @sliders = Erp::Banners::Banner.get_home_sliders
          end
          @newest_products = Erp::Products::Product.all.order('created_at DESC').limit(10)
          @newest_blogs = Erp::Articles::Article.newest_articles(2)
        end
      end
    end
  end
end