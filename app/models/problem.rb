class Problem < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :title, :use_case
end
