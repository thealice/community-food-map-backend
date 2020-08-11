## TO DO
-[] remove extra actions (or files) created by generator
-[] Should Food Source route should be nested under location?
-[] Should Food source form be nested under location form?
-[] Should Location be nested under Region as well?
-[x] Add zipcode to location
-[] get rid of region for now?
-[] Locations should require name (and lat, lng?)
-[] Consider adding photo to location
-[] Check to see if there are any relationships to which I should add `dependent: destroy`. Add `null: false` to their foreign keys in the appropriate table (eg. `t.bigint "location_id", null: false` in the `:food_sourcees` table)
