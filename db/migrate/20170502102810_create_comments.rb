class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :content
      #t.integer :post_id  // same as belongs to
      t.belongs_to :post
      t.timestamps
    end
  end
end
