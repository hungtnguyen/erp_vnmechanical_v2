Erp::Articles::Article.class_eval do
  # get all blogs
  def self.get_services(params)
    query = self.get_active
    
    if params[:cat_id].present?
      query = query.where(category_id: params[:cat_id])
    else
      query = query.joins(:category).where('erp_articles_categories.alias = ?', Erp::Articles::Category::ALIAS_SERVICE)
    end
    
    query = query.order('erp_articles_articles.created_at DESC')    
  end
  
  # get all blogs
  def self.get_recruitments(params)
    query = self.get_active
    
    if params[:cat_id].present?
      query = query.where(category_id: params[:cat_id])
    else
      query = query.joins(:category).where('erp_articles_categories.alias = ?', Erp::Articles::Category::ALIAS_RECRUITMENT)
    end
    
    query = query.order('erp_articles_articles.created_at DESC')    
  end
end