class Problem < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :title, :use_case, :category, :name, :twitter_username
end
