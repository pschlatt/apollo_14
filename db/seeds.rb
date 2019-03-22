# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  @astronaut_1 = Astronaut.create( name: 'John Glenn' ,  age: 42, job: 'pilot' )
  @astronaut_2 = Astronaut.create( name: 'Neil Armstrong' ,  age: 38, job: 'Commander' )
  @astronaut_3 = Astronaut.create( name: 'Sally Ride' ,  age: 39, job: 'Systems Engineer' )
  @astronaut_4 = Astronaut.create( name: 'Buzz Aldrin' ,  age: 52, job: 'EVA Specialist' )

#   Character.create(name: 'Luke', movie: movies.first)
