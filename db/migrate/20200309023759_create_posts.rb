class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :text
      t.text :video
      t.timestamps
    end
  end
end
