class Tag < ActiveRecord::Base
has_many :taggings
has_many :tweets, through: :taggings

end
