class Tasks
  def initialize
    @todo_list = []
  end

  def add(todo)
    @todo_list << todo
  end

  def complete(todo)
    fail "no such task" unless @todo_list.include?(todo)
    @todo_list.delete(todo)
  end

  def list
    return @todo_list
  end
end
