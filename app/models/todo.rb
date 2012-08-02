class Todo < ActiveRecord::Base
  attr_accessible :name, :project_id, :tasks_attributes
  
  has_many :tasks
  
  accepts_nested_attributes_for :tasks
end
