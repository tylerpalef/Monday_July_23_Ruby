def assignment(project)
# Creating our method... assignment is the name of the method.. project is the variable
  project[:steps].each do |people_committee|
# project is the name of the array, :steps is the task.
# each do is each line of the hash
# |people_committee| is setting the name of the new array
    people_committee[:person] = project[:committee].first
# The person key in the people_committee variable is assigned to the first name from original project array's commitee key
    project[:committee].rotate!
# This makes sure the value of the committee key rotates
  end
# Ends the loop of each do
  puts project
# Puts the result of our new/updated  array
end

project = {
  committee: ["Stella", "Salma", "Kai"],
  title: "Very Important Project",
  due_date: "December 14, 2019",
  id: "3284",
  steps: [
    {description: "conduct interviews",
     due_date: "August 1, 2018"
    },
    {description: "code of conduct",
     due_date: "January 1, 2018"
    },
    {description: "compile results",
     due_date: "November 10, 2018"
    },
    {description: "version 1",
     due_date: "January 15, 2019"
    },
    {description: "revisions",
     due_date: "March 30, 2019"
    },
    {description: "version 2",
     due_date: "July 12, 2019"
    },
    {description: "final edit",
     due_date: "October 1, 2019"
    },
    {description: "final version",
     due_date: "November 20, 2019"
    },
    {description: "Wrap up",
     due_date: "December 1, 2019"
    }
  ]
}

return assignment(project)
# Calling on our method
