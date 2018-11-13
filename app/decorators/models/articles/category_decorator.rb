Erp::Articles::Category.class_eval do
  # class const
  ALIAS_CAREER = 'career'
  ALIAS_COMPANY_STRUCTURE = 'company_structure'
  
  # get alias
  def self.get_alias_options()
    [
      {text: I18n.t('blog'),value: self::ALIAS_BLOG},
      {text: I18n.t('career'),value: self::ALIAS_CAREER},
      {text: I18n.t('identity'),value: self::ALIAS_IDENTITY},
      {text: I18n.t('service'),value: self::ALIAS_SERVICE},
      {text: I18n.t('about_us'),value: self::ALIAS_ABOUT_US},
      {text: I18n.t('home_about'),value: self::ALIAS_HOME_ABOUT},
      {text: I18n.t('cooperative_customers'),value: self::ALIAS_COOPERATIVE_CUSTOMERS},
      {text: I18n.t('company_structure'),value: self::ALIAS_COMPANY_STRUCTURE}
    ]
  end
  
  def self.get_categories_by_alias_career
    query = self.get_active
    query = query.where(alias: Erp::Articles::Category::ALIAS_CAREER)
  end
  
  def self.get_categories_by_alias_service
    query = self.get_active
    query = query.where(alias: Erp::Articles::Category::ALIAS_SERVICE)
  end
    
  def get_articles
    self.articles.where(erp_articles_articles: {archived: false})
  end
end