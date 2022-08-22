class TodoList
  def initialize
    @list = []
  end

  def add(todo) # todo is an instance of Todo
    @list << todo
  end

  def incomplete
    return @list.select { |task| !task.done? }
  end

  def complete
    return @list.select { |task| task.done? }
  end

  def give_up!
    @list.map { |task| task.mark_done! }
  end
end
