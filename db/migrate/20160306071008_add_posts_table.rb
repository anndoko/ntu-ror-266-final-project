class AddPostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :topic
      t.text :post_text
      t.integer :vote

      # Association
      t.integer :user_id

      t.timestamps
    end
  end
end