require "application_system_test_case"

class NepremicninesTest < ApplicationSystemTestCase
  setup do
    @nepremicnine = nepremicnines(:one)
  end

  test "visiting the index" do
    visit nepremicnines_url
    assert_selector "h1", text: "Nepremicnines"
  end

  test "creating a Nepremicnine" do
    visit nepremicnines_url
    click_on "New Nepremicnine"

    fill_in "Address", with: @nepremicnine.address
    fill_in "Bathrooms", with: @nepremicnine.bathrooms
    fill_in "Name", with: @nepremicnine.name
    fill_in "Price", with: @nepremicnine.price
    fill_in "Rooms", with: @nepremicnine.rooms
    click_on "Create Nepremicnine"

    assert_text "Nepremicnine was successfully created"
    click_on "Back"
  end

  test "updating a Nepremicnine" do
    visit nepremicnines_url
    click_on "Edit", match: :first

    fill_in "Address", with: @nepremicnine.address
    fill_in "Bathrooms", with: @nepremicnine.bathrooms
    fill_in "Name", with: @nepremicnine.name
    fill_in "Price", with: @nepremicnine.price
    fill_in "Rooms", with: @nepremicnine.rooms
    click_on "Update Nepremicnine"

    assert_text "Nepremicnine was successfully updated"
    click_on "Back"
  end

  test "destroying a Nepremicnine" do
    visit nepremicnines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nepremicnine was successfully destroyed"
  end
end
