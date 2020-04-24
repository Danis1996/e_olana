require "application_system_test_case"

class HommesTest < ApplicationSystemTestCase
  setup do
    @homme = hommes(:one)
  end

  test "visiting the index" do
    visit hommes_url
    assert_selector "h1", text: "Hommes"
  end

  test "creating a Homme" do
    visit hommes_url
    click_on "New Homme"

    click_on "Create Homme"

    assert_text "Homme was successfully created"
    click_on "Back"
  end

  test "updating a Homme" do
    visit hommes_url
    click_on "Edit", match: :first

    click_on "Update Homme"

    assert_text "Homme was successfully updated"
    click_on "Back"
  end

  test "destroying a Homme" do
    visit hommes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Homme was successfully destroyed"
  end
end
