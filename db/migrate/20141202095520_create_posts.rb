class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body
      t.references :user, index: true
      t.references :collection, index: true

      t.timestamps
    end
  end
end
