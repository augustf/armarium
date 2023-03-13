require "application_system_test_case"

class CoinTypesTest < ApplicationSystemTestCase
  setup do
    @coin_type = coin_types(:one)
  end

  test "visiting the index" do
    visit coin_types_url
    assert_selector "h1", text: "Coin types"
  end

  test "should create coin type" do
    visit coin_types_url
    click_on "New coin type"

    fill_in "Composition", with: @coin_type.composition
    fill_in "Denomination", with: @coin_type.denomination
    fill_in "First issued", with: @coin_type.first_issued
    fill_in "Last issued", with: @coin_type.last_issued
    fill_in "Name", with: @coin_type.name
    fill_in "Style", with: @coin_type.style
    click_on "Create Coin type"

    assert_text "Coin type was successfully created"
    click_on "Back"
  end

  test "should update Coin type" do
    visit coin_type_url(@coin_type)
    click_on "Edit this coin type", match: :first

    fill_in "Composition", with: @coin_type.composition
    fill_in "Denomination", with: @coin_type.denomination
    fill_in "First issued", with: @coin_type.first_issued
    fill_in "Last issued", with: @coin_type.last_issued
    fill_in "Name", with: @coin_type.name
    fill_in "Style", with: @coin_type.style
    click_on "Update Coin type"

    assert_text "Coin type was successfully updated"
    click_on "Back"
  end

  test "should destroy Coin type" do
    visit coin_type_url(@coin_type)
    click_on "Destroy this coin type", match: :first

    assert_text "Coin type was successfully destroyed"
  end
end
