require "todo_list"

describe TodoList do
  it "initially has an empty list of tasks" do
    todo_list = TodoList.new
    expect(todo_list.incomplete).to eq []
  end

  it "return incomplete tasks as empty list" do
    todo_list = TodoList.new
    expect(todo_list.incomplete).to eq []
  end

  it "returns complete tasks as empty list" do
    todo_list = TodoList.new
    expect(todo_list.give_up!).to eq []
  end
end
