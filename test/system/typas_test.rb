require "application_system_test_case"

class TypasTest < ApplicationSystemTestCase
  setup do
    @typa = typas(:one)
  end

  test "visiting the index" do
    visit typas_url
    assert_selector "h1", text: "Typas"
  end

  test "creating a Typa" do
    visit typas_url
    click_on "New Typa"

    fill_in "Durre", with: @typa.durre
    fill_in "Hafa", with: @typa.hafa
    fill_in "Titre", with: @typa.titre
    check "Vue" if @typa.vue
    click_on "Create Typa"

    assert_text "Typa was successfully created"
    click_on "Back"
  end

  test "updating a Typa" do
    visit typas_url
    click_on "Edit", match: :first

    fill_in "Durre", with: @typa.durre
    fill_in "Hafa", with: @typa.hafa
    fill_in "Titre", with: @typa.titre
    check "Vue" if @typa.vue
    click_on "Update Typa"

    assert_text "Typa was successfully updated"
    click_on "Back"
  end

  test "destroying a Typa" do
    visit typas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Typa was successfully destroyed"
  end
end
