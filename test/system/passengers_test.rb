require "application_system_test_case"

class PassengersTest < ApplicationSystemTestCase
  setup do
    @passenger = passengers(:one)
  end

  test "visiting the index" do
    visit passengers_url
    assert_selector "h1", text: "Passengers"
  end

  test "creating a Passenger" do
    visit passengers_url
    click_on "New Passenger"

    fill_in "Email", with: @passenger.email
    fill_in "Name", with: @passenger.name
    click_on "Create Passenger"

    assert_text "Passenger was successfully created"
    click_on "Back"
  end

  test "updating a Passenger" do
    visit passengers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @passenger.email
    fill_in "Name", with: @passenger.name
    click_on "Update Passenger"

    assert_text "Passenger was successfully updated"
    click_on "Back"
  end

  test "destroying a Passenger" do
    visit passengers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Passenger was successfully destroyed"
  end
end
