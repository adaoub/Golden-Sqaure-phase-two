require "todo"

describe Todo do
  it "initially returns the task as a string" do
    todo = Todo.new("take bins out")
    expect(todo.task).to eq "take bins out"
  end

  it "return true for an added task when mark_done! is called" do
    todo = Todo.new("take bins out")
    expect(todo.mark_done!).to eq true
  end

  it "return false for an added task when done? is called if task is not marked as done" do
    todo = Todo.new("take bins out")
    expect(todo.done?).to eq false
  end
end
