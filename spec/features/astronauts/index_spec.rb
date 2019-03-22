require "rails_helper"

RSpec.describe "astronaut_index", type: :feature do
  before :each do
    @astronaut_1 = Astronaut.create( name: 'John Glenn' ,  age: 42, job: 'pilot' )
    @astronaut_2 = Astronaut.create( name: 'Neil Armstrong' ,  age: 38, job: 'Commander' )
    @astronaut_3 = Astronaut.create( name: 'Sally Ride' ,  age: 39, job: 'Systems Engineer' )
    @astronaut_4 = Astronaut.create( name: 'Buzz Aldrin' ,  age: 49, job: 'EVA Specialist' )
    @mission_1 = Mission.create( title: 'Apollo 11', time_in_space: 13)
    @mission_2 = Mission.create( title: 'Apollo 11', time_in_space: 13)
    @mission_3 = Mission.create( title: 'Apollo 11', time_in_space: 13)
    @average = Astronaut.average_age

  end

  it "user_can_see_all_astronauts" do

    visit astronauts_path

    expect(page).to have_content(@astronaut_1.name)
    expect(page).to have_content(@astronaut_1.age)
    expect(page).to have_content(@astronaut_1.job)
    expect(page).to have_content(@astronaut_2.name)
    expect(page).to have_content(@astronaut_2.age)
    expect(page).to have_content(@astronaut_2.job)
    expect(page).to have_content(@astronaut_3.name)
    expect(page).to have_content(@astronaut_3.age)
    expect(page).to have_content(@astronaut_3.job)
    expect(page).to have_content(@astronaut_4.name)
    expect(page).to have_content(@astronaut_4.age)
    expect(page).to have_content(@astronaut_4.job)

  end

  it "user_can_see_average_age" do
    visit astronauts_path

    expect(page).to have_content(@average)

  end
end
