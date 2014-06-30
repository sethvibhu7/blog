class Changetagging < ActiveRecord::Migration
  def change
  	change_table :taggings do |t|
  		t.rename :article_id, :tweet_id
  	end
  end
end
