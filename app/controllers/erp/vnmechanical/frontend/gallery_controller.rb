module Erp
  module Vnmechanical
    module Frontend
      class GalleryController < Erp::Frontend::FrontendController
        def index
          @galleries = Erp::Banners::Banner.get_galleries
          @categories = Erp::Banners::Category.get_categories_for_galleries_page
        end
      end
    end
  end
end