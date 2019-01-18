Erp::Articles::Category.class_eval do  
  # get alias
  def self.get_alias_options()
    [
      {text: I18n.t('alias.blog'),value: self::ALIAS_BLOG},
      {text: I18n.t('alias.career'),value: self::ALIAS_CAREER},
      {text: I18n.t('alias.service'),value: self::ALIAS_SERVICE},
      {text: I18n.t('alias.about_us'),value: self::ALIAS_ABOUT_US},
      {text: I18n.t('alias.home_about'),value: self::ALIAS_HOME_ABOUT}
    ]
  end
  
  def self.get_categories_by_alias_career
    query = self.get_active
    query = query.where(alias: Erp::Articles::Category::ALIAS_CAREER)
  end
  
  def self.get_categories_by_alias_service
    query = self.get_active
    query = query.where(alias: Erp::Articles::Category::ALIAS_SERVICE)
    query = query.order('erp_articles_categories.custom_order asc')
  end
    
  def get_articles
    self.articles.where(erp_articles_articles: {archived: false})
  end
end