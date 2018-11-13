class AddViewsToErpArticlesArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :erp_articles_articles, :views, :integer, default: 0
  end
end
