class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      t.date :published_date
      t.boolean :allow_comments, default:true

      t.timestamps null: false
    end
  end
end
