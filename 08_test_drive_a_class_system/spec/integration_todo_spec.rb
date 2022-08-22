require "todo"
require "todo_list"

describe "integration" do
  it "returns list of all incompleted tasks" do
    todo = Todo.new ("take bins out")
    todo_list = TodoList.new
    todo_list.add(todo)
    expect(todo_list.incomplete).to eq [todo]
  end
  describe "#mark_done!" do
    it "moves the task to complete list when called" do
      todo = Todo.new ("take bins out")
      todo_list = TodoList.new
      todo_list.add(todo)
      todo.mark_done!
      expect(todo_list.complete).to eq [todo]
    end

    it "task left in incomplete if mark_done! is not called" do
      todo = Todo.new ("take bins out")
      todo_list = TodoList.new
      todo_list.add(todo)

      expect(todo_list.incomplete).to eq [todo]
    end
  end

  describe "#give_up!" do
    it "marks all todos as complete" do
      todo = Todo.new ("take bins out")
      todo_list = TodoList.new
      todo_list.add(todo)
      todo_list.give_up!
      expect(todo_list.complete).to eq [todo]
    end
  end
end
