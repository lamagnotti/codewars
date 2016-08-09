def match(candidate, job)
  raise ArgumentError, "min_salary missing from candidate" unless candidate.key?("min_salary")
  raise ArgumentError, "max_salary missing from job" unless job.key?("max_salary")

  candidate["min_salary"] * 0.9 <= job["max_salary"]
end

candidate1 = { 'min_salary'=>120000 }
candidate2 = { 'min_salary'=>190000 }
job1 = { 'max_salary'=>130000 }
job2 = { 'max_salary'=>80000 }
job3 = { 'max_salary'=>171000 }

p match(candidate1, job1) # => true
p match(candidate2, job1) # => false
p match(candidate2, job3) # => true
