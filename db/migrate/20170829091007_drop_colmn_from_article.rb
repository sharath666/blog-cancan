class DropColmnFromArticle < ActiveRecord::Migration
  def change
remove_column :articles,  :article_categories, :integer
  end
end
