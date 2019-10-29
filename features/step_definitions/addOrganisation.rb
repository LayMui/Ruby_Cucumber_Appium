#Given("{string} is at the main organisation") do |string|
  # Background: Onboarding process
#end

When("{string} create a new organisation {string}") do |string, string2|
    i_create_new_org(string2)
end

Then("{string} will be the owner of the organisation {string}") do |string, string2|
  puts string + ' is the owner of ' + string2
end