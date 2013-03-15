class Problem < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :title, :use_case, :category, :name, :twitter_username
  
  # Methods of pulling up next and previous links for the main.html.erb
  def previous_post
    self.class.first(:conditions => ["id < ?", id], :order => "id desc")
  end

  def next_post
    self.class.first(:conditions => ["id > ?", id], :order => "id asc")
  end  
  
end
