class Todo < ActiveRecord::Base
  attr_accessible :name, :project_id
  
  has_many :tasks
  
  validates_presence_of :project_id
end
