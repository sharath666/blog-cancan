class AddToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :article_categories, :integer
  end
end
