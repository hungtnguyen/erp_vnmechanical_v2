module Erp
  module Vnmechanical
    module Frontend
      class ServiceController < Erp::Frontend::FrontendController
        def index
          #@services = Erp::Articles::Article.get_services(params).paginate(:page => params[:page], :per_page => 6)
        end
        
        def detail
          @service = Erp::Articles::Article.find(params[:service_id])
          @categories = Erp::Articles::Category.where(alias: Erp::Articles::Category::ALIAS_SERVICE)
          @meta_keywords = @service.meta_keywords
          @meta_description = @service.meta_description
        end
      end
    end
  end
end