require "application_system_test_case"

class CoinsTest < ApplicationSystemTestCase
  setup do
    @coin = coins(:one)
  end

  test "visiting the index" do
    visit coins_url
    assert_selector "h1", text: "Coins"
  end

  test "should create coin" do
    visit coins_url
    click_on "New coin"

    fill_in "Certification", with: @coin.certification
    fill_in "Certification number", with: @coin.certification_number
    fill_in "Coin type", with: @coin.coin_type_id
    fill_in "Collection item", with: @coin.collection_item_id
    fill_in "Condition", with: @coin.condition
    fill_in "Defects", with: @coin.defects
    fill_in "Distribution", with: @coin.distribution
    fill_in "Mintage", with: @coin.mintage
    fill_in "Mintmark", with: @coin.mintmark
    fill_in "Year", with: @coin.year
    click_on "Create Coin"

    assert_text "Coin was successfully created"
    click_on "Back"
  end

  test "should update Coin" do
    visit coin_url(@coin)
    click_on "Edit this coin", match: :first

    fill_in "Certification", with: @coin.certification
    fill_in "Certification number", with: @coin.certification_number
    fill_in "Coin type", with: @coin.coin_type_id
    fill_in "Collection item", with: @coin.collection_item_id
    fill_in "Condition", with: @coin.condition
    fill_in "Defects", with: @coin.defects
    fill_in "Distribution", with: @coin.distribution
    fill_in "Mintage", with: @coin.mintage
    fill_in "Mintmark", with: @coin.mintmark
    fill_in "Year", with: @coin.year
    click_on "Update Coin"

    assert_text "Coin was successfully updated"
    click_on "Back"
  end

  test "should destroy Coin" do
    visit coin_url(@coin)
    click_on "Destroy this coin", match: :first

    assert_text "Coin was successfully destroyed"
  end
end
