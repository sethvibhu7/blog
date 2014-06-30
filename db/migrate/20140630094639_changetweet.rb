class Changetweet < ActiveRecord::Migration
  def change
  	change_table :tweets do |t|
  		t.rename :tag, :title
  	end
  end
end
