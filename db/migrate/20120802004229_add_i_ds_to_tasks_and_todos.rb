class AddIDsToTasksAndTodos < ActiveRecord::Migration
  def change
    add_column :todos, :project_id, :integer
    add_column :tasks, :todo_id, :integer
  end
end
