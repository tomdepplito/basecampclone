class Task < ActiveRecord::Base
  attr_accessible :description, :due_date, :todo_id
  
  belongs_to :todo
  
  validates_presence_of :todo_id
end
