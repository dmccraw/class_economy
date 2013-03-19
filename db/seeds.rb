# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.com/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['TEST_ADMIN_NAME'].dup, :email => ENV['TEST_ADMIN_EMAIL'].dup, :password => ENV['TEST_ADMIN_PASSWORD'].dup, :password_confirmation => ENV['TEST_ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin

# create test teacher
teacher = User.find_or_create_by_email :name => ENV['TEST_TEACHER_NAME'].dup, :email => ENV['TEST_TEACHER_EMAIL'].dup, :password => ENV['TEST_TEACHER_PASSWORD'].dup, :password_confirmation => ENV['TEST_TEACHER_PASSWORD'].dup
puts 'user: ' << teacher.name
teacher.add_role :teacher


# create test user1
student1 = User.find_or_create_by_email :name => ENV['TEST_STUDENT1_NAME'].dup, :email => ENV['TEST_STUDENT1_EMAIL'].dup, :password => ENV['TEST_STUDENT1_PASSWORD'].dup, :password_confirmation => ENV['TEST_STUDENT1_PASSWORD'].dup
puts 'user: ' << student1.name
student1.add_role :student

# create test user1
student2 = User.find_or_create_by_email :name => ENV['TEST_STUDENT2_NAME'].dup, :email => ENV['TEST_STUDENT2_EMAIL'].dup, :password => ENV['TEST_STUDENT2_PASSWORD'].dup, :password_confirmation => ENV['TEST_STUDENT2_PASSWORD'].dup
puts 'user: ' << student2.name
student2.add_role :student

# create test group
group = Group.find_or_create_by_name(
  name: "Test Group",
  user_id: teacher.id
)

# add user 1 to group
membership = Membership.new()
membership.user_id = student1.id
membership.group_id = group.id
membership.save!

# add user 2 to group
membership = Membership.new()
membership.user_id = student2.id
membership.group_id = group.id
membership.save!




