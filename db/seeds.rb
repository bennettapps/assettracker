# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 1. Create three categories: Smart Phone, Laptop, and Desktop

# 2. Create the following manufacturers:

# Apple (https://www.apple.com)
# Lenovo (https://www.lenovo.com)
# Dell (https://www.dell.com)

# 3. Create 5 numbered employees, e.g. "Employee 1", "Employee 2"

# 4. Create a device for each employee using the first category and first manufacturer. For example,
# Name: "Smart Phone 1" (use the employee's ID itself for the number)
# Category: Smart Phone
# Manufacturer: Apple
# Employee: Employee 1

# 5. Create a device for each employee using the second category and second manufacturer. For example,
# Name: "Laptop 1"
# Category: Laptop
# Manufacturer: Lenovo

# 6. Create 5 numbered software packages, with a random license_count from 1~5. For example,
# Name: "Software 1"
# License count: [a random number from 1 to 5]

# 7. Assign a random software package to each employee.
# Hint: use a random number for the Software ID when finding it

# 8. Do the above (adding a random software package to each employee) 3 times!

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

devices = Device.create([
    {name: "Smart Phone " + employees[0].last_name, category: categories[0], manufacturer: manufacturers[0], employee: employees[0]},
    {name: "Smart Phone " + employees[1].last_name, category: categories[0], manufacturer: manufacturers[0], employee: employees[1]},
    {name: "Smart Phone " + employees[2].last_name, category: categories[0], manufacturer: manufacturers[0], employee: employees[2]},
    {name: "Smart Phone " + employees[3].last_name, category: categories[0], manufacturer: manufacturers[0], employee: employees[3]},
    {name: "Smart Phone " + employees[4].last_name, category: categories[0], manufacturer: manufacturers[0], employee: employees[4]},
    {name: "Laptop " + employees[0].last_name, category: categories[1], manufacturer: manufacturers[1], employee: employees[0]},
    {name: "Laptop " + employees[1].last_name, category: categories[1], manufacturer: manufacturers[1], employee: employees[1]},
    {name: "Laptop " + employees[2].last_name, category: categories[1], manufacturer: manufacturers[1], employee: employees[2]},
    {name: "Laptop " + employees[3].last_name, category: categories[1], manufacturer: manufacturers[1], employee: employees[3]},
    {name: "Laptop " + employees[4].last_name, category: categories[1], manufacturer: manufacturers[1], employee: employees[4]}
])

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
    end
end