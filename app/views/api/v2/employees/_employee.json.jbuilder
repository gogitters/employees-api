json.id employee.id
if employee.first_name.starts_with?("K")
  json.full_name employee.full_name + " COOL!!!!!"
else
  json.full_name employee.full_name
end
json.birthdate employee.birthdate
json.email employee.email
# json.ssn employee.ssn
json.addresses employee.addresses.each do |address|
  json.address_1 address.address_1
  json.address_2 address.address_2
  json.city address.city
  json.state address.state
  json.zip address.zip
end
