class AddTagsTable < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag_title

      t.timestamps
    end

    # Create a join table: post_tagship
    create_table :post_tagships do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end