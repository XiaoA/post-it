class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.url :string
      t.title :string
      t.description :text
    end
  end
end
