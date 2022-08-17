# {{track_tasks}} Method Design Recipe

## 1. Describe the Problem


> As a user

> So that I can keep track of my tasks

> I want to check if a text includes the string #TODO.


## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

check_todo = track_tasks(text)

check_todo: a boolean that return true if text includes #TODO
text: a string of text (e.g "Hello World")




# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

track_tasks("take bins out") => false
track_tasks("#TODO take bins out") => true
track_tasks("") => false
track_tasks(1283) => false


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
