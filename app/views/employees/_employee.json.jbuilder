json.id employee.id
if employee.first_name.length > 6
  json.firstName employee.first_name + " (wow that's a long name)"
else
  json.firstName employee.first_name
end
json.lastName employee.last_name
json.fullName employee.full_name
json.birthdate employee.birthdate
json.email employee.email
json.anything 'yo'
