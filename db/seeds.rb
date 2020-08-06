# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

sf = Region.create(name: 'San Francisco', lat: 37.7576793, lng:-122.5076404, zoom:12)
southbay = Region.create(name: 'South Bay', lat:37.2965315, lng:-122.0976061, zoom:10)
eastbay = Region.create(name: 'East Bay', lat:37.7586346, lng:-122.5154696, zoom:10)
northbay = Region.create(name: 'North Bay', lat:38.0675472, lng:-123.0211811, zoom:10)
user = User.first
opl = eastbay.locations.create(name: "Oakland Public Library - Main", notes: nil, lat: 37.8009514, lng: -122.2658695, zoom: 17, street: nil, city: nil, state: nil, user: user)
lunch = opl.food_sources.create(name: 'Free Lunch', notes: 'Monday thru Friday 12pm-3pm', available: true, user: user)
bateman  = eastbay.locations.create(lat:37.854866, lng:-122.255789, zoom:17 , street: '3069-3001 Bateman St', city: 'Berkeley', state: 'CA', user: user)
pomtree = bateman.food_sources.create(name: 'Pomegranate Tree', notes: 'fruits in the fall', available: false, user: user)
appletree = bateman.food_sources.create(name: 'Apple Tree', notes: 'fruits in the late summer/early fall', available: true, user: user)
