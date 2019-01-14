Erp::Articles::Article.class_eval do
  # Count article views
  def increase_visit(by = 1)
    self.views ||= 0
    self.views += by
    self.save
  end
  
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
  
  # get all about us
  def self.get_all_abouts
    query = self.get_active
    query = query.joins(:category).where('erp_articles_categories.alias = ?', Erp::Articles::Category::ALIAS_ABOUT_US)
    query = query.order('erp_articles_articles.custom_order ASC')
  end
  
  # get all home about us
  def self.get_all_home_abouts
    query = self.get_active
    query = query.joins(:category).where('erp_articles_categories.alias = ?', Erp::Articles::Category::ALIAS_HOME_ABOUT)
    query = query.order('erp_articles_articles.custom_order ASC')
  end
end