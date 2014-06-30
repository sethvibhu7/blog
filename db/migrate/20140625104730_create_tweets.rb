class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tag
      t.text :status

      t.timestamps
    end
  end
end
