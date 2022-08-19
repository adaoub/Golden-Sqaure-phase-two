require "tasks"

describe Tasks do
  it "returns an empty list when no todo is added" do
    task = Tasks.new
    expect(task.list).to eq []
  end
  it "adds a task to list when add is called" do
    task = Tasks.new
    task.add("take bins out")
    expect(task.list).to eq ["take bins out"]
  end
  it "adds multiple tasks to list when add is called multiple times" do
    task = Tasks.new
    task.add("take bins out")
    task.add("have lunch")
    expect(task.list).to eq ["take bins out", "have lunch"]
  end

  it "deltes a taks from list when marked as complete" do
    task = Tasks.new
    task.add("take bins out")
    task.add("have lunch")
    task.complete("take bins out")
    expect(task.list).to eq ["have lunch"]
  end

  it "fails when taks does not exist in list when trying to complete" do
    task = Tasks.new
    task.add("take bins out")
    task.add("have lunch")
    expect { task.complete("Go to work") }.to raise_error "no such task"
  end
end
