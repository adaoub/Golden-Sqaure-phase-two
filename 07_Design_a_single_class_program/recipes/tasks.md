# {{Tasks/Todos} Class Design Recipe

## 1. Describe the Problem

> As a user

> So that I can keep track of my tasks

>I want a program that I can add todo tasks to and see a list of them.

>As a user
>So that I can focus on tasks to complete
>I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Tasks
    def initilize
    end

    def add (todo) #todo is a string that represnt a todo task to be added

    end

    def list
    # returns a liost of todos added as a string
    end

    def complete (todo) #todo is a string that represnt a todo task to be added
    #should mark todo as complete and remove it from the list

    end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby


# 1
task = Tasks.new
task.list #=> []

# 2
task = Tasks.new
task.add("take bins out")
task.list #=> ["take bins out"]

# 3
task = Tasks.new
task.add("take bins out")
task.add("have lunch")
task.list #=> ["take bins out", "have lunch"]

# 4
task = Tasks.new
task.add("take bins out")
task.add("have lunch")
task.complete("take bins out")
task.list #=> ["have lunch"]

# 5
task = Tasks.new
task.add("take bins out")
task.add("have lunch")
task.complete("Go to work") #=> fails "no such task"


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._



