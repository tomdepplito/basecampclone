class Task < ActiveRecord::Base
  attr_accessible :description, :due_date, :todo_id
  
  belongs_to :todo
end
