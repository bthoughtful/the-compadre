class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :author

      t.timestamps
    end

    add_index :articles, :created_at
    add_index :articles, :author
  end
end
