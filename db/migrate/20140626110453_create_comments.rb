class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.text :body
      t.references :tweet, index: true
      t.references :user

      t.timestamps
    end
  end
end
