# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'securerandom'
randomstring = SecureRandom.hex(10)

sf = Region.create(name: 'San Francisco', lat: 37.7576793, lng:-122.5076404, zoom:12)
southbay = Region.create(name: 'South Bay', lat:37.2965315, lng:-122.0976061, zoom:10)
eastbay = Region.create(name: 'East Bay', lat:37.7586346, lng:-122.5154696, zoom:10)
northbay = Region.create(name: 'North Bay', lat:38.0675472, lng:-123.0211811, zoom:10)
user = User.create(name: 'Alice', email: 'alice@fake.com', password: randomstring)
opl = eastbay.locations.create(name: "Oakland Public Library - Main", notes: nil, lat: 37.8009514, lng: -122.2658695, zoom: 17, street: nil, city: nil, state: nil, zipcode: '94612', user: user)
lunch = opl.food_sources.create(name: 'Free Lunch', notes: 'Monday thru Friday 12pm-3pm', available: true, user: user)
bateman  = eastbay.locations.create(name: '3001 Bateman St.', lat:37.854866, lng:-122.255789, zoom:17 , street: '3069-3001 Bateman St', city: 'Berkeley', state: 'CA', zipcode: '94705', user: user)
pomtree = bateman.food_sources.create(name: 'Pomegranate Tree', notes: 'fruits in the fall', available: false, user: user)
appletree = bateman.food_sources.create(name: 'Apple Tree', notes: 'fruits in the late summer/early fall', available: true, user: user)
sfpl = sf.locations.create(name: "SF Public Library - Main", notes: nil, lat: 37.7790819, lng: -122.4157961, zoom: 15, street: '100 Larkin St.', city: 'San Francisco', state: 'CA', zipcode: '94102', user: user)
lunchsf = sfpl.food_sources.create(name: 'Free Lunch', notes: 'Monday thru Friday 11am -2:30pm until August 31st. Children and teens age 0-18 only.', available: true, user: user)