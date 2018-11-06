module Erp
  module Vnmechanical
    module Frontend
      class RecruitmentController < Erp::Frontend::FrontendController
        def listing
          @recruitments = Erp::Articles::Article.get_recruitments(params).paginate(:page => params[:page], :per_page => 6)
        end
        
        def detail
          @recruitment = Erp::Articles::Article.find(params[:recruitment_id])
          @meta_keywords = @recruitment.meta_keywords
          @meta_description = @recruitment.meta_description
        end
      end
    end
  end
end