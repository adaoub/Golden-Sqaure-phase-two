def track_tasks(text)
  if text.is_a? String
    if text.include? ("#TODO")
      check_todo = true
      return check_todo
    else
      check_todo = false
      return check_todo
    end
  end
  fail "This is not a string" unless text.is_a? String
end
