class Project < ActiveRecord::Base
  attr_accessible :name, :public, :user_id, :todos_attributes
  
  belongs_to :user
  
  validates_presence_of :name, :user_id
  
  has_many :todos
  
  accepts_nested_attributes_for :todos
end