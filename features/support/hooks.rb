Before do
  @asos_site = ASOS_Site.new
  @first_name = Faker::Name.first_name
  @last_name = Faker::Name.last_name
  puts "Loading Test scenario..."
end

After do
  puts "Test scenario successully complete."
  sleep 3
end
