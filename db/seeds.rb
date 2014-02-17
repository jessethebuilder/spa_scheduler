a = Availability.new
DAYS.each do |day|
  a.send("#{day}_open=", "9:00AM")
  a.send("#{day}_close=", "5:00PM")
end

s = Schedule.new
s.availability = a

u = User.new(:email => 'test@test.com', :password => 'test8888', :name => Faker::Name.name)
u.schedule = s
u.save!
