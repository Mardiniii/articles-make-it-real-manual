class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.date :date
      t.boolean :published
      t.text :post

      t.timestamps
    end
  end
end
