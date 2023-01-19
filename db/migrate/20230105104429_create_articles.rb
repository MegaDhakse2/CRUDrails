class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      remove_foreign_key :posts, :users

      t.timestamps
    end
  end
end
