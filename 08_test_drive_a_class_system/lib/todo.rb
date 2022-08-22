class Todo
  def initialize(task) # task is a string
    @task = task
    @done = false
  end

  def task
    @task
  end

  def mark_done!
    @done = true

    # Marks the todo as done
    # Returns nothing
  end

  def done?
    @done
    # Returns true if the task is done
    # Otherwise, false
  end
end
