require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places")

get("/") do
  @places = Places.all()
  erb(:index)
end

post("/places") do
  location = params.fetch("location")
  place = Places.new(location)
  place.save()
  erb(:success)
end
