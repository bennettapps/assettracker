categories = Category.create([
    {name: "Smart Phone"}, 
    {name: "Laptop"}, 
    {name: "Desktop"}
])

manufacturers = Manufacturer.create([
    {name: "Apple", website: "https://www.apple.com"}, 
    {name: "Lenovo", website: "https://www.lenovo.com"}, 
    {name: "Dell", website: "https://www.dell.com"}
])

employees = Employee.create([
    {first_name: "Employee", last_name: "1"}, 
    {first_name: "Employee", last_name: "2"}, 
    {first_name: "Employee", last_name: "3"}, 
    {first_name: "Employee", last_name: "4"}, 
    {first_name: "Employee", last_name: "5"}
])

devices = []
categories.each do |category|
  manufacturers.each do |manufacturer|
    devices << Device.create(
      name: "Device " + rand(1..100).to_s,
      category: category,
      manufacturer: manufacturer
    )
  end
end

softwares = Software.create([
    {name: "Software 1", license_count: rand(1..5)},
    {name: "Software 2", license_count: rand(1..5)},
    {name: "Software 3", license_count: rand(1..5)},
    {name: "Software 4", license_count: rand(1..5)},
    {name: "Software 5", license_count: rand(1..5)}
])

for i in 1..3 do
    for j in 0..4 do
        employees[j].softwares << softwares[rand(0..4)]
        devices_available = devices.select { |device| device.employee_id.nil? }
        if devices_available.any?
            employees[j].devices << devices_available.sample
        end
    end
end