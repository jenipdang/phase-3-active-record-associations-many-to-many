class Game < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews
end

#has_many :users, through: :reivews is the same as the SQL query below:
#SELECT "users".*
#FROM "users"
#INNER JOIN "reivews"
#ON "users"."id" = "reviews"."user_id"
#WHERE "reviews"."game_id" = 1