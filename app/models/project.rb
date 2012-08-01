class Project < ActiveRecord::Base
  attr_accessible :name, :public, :user_id
  
  belongs_to :user
  
  validates_presence_of :name, :user_id
end
