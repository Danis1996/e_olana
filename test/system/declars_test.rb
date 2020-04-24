require "application_system_test_case"

class DeclarsTest < ApplicationSystemTestCase
  setup do
    @declar = declars(:one)
  end

  test "visiting the index" do
    visit declars_url
    assert_selector "h1", text: "Declars"
  end

  test "creating a Declar" do
    visit declars_url
    click_on "New Declar"

    fill_in "Reponse", with: @declar.reponse
    fill_in "Typa", with: @declar.typa_id
    fill_in "User", with: @declar.user
    click_on "Create Declar"

    assert_text "Declar was successfully created"
    click_on "Back"
  end

  test "updating a Declar" do
    visit declars_url
    click_on "Edit", match: :first

    fill_in "Reponse", with: @declar.reponse
    fill_in "Typa", with: @declar.typa_id
    fill_in "User", with: @declar.user
    click_on "Update Declar"

    assert_text "Declar was successfully updated"
    click_on "Back"
  end

  test "destroying a Declar" do
    visit declars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Declar was successfully destroyed"
  end
end
