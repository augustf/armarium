require "application_system_test_case"

class CollectionItemsTest < ApplicationSystemTestCase
  setup do
    @collection_item = collection_items(:one)
  end

  test "visiting the index" do
    visit collection_items_url
    assert_selector "h1", text: "Collection items"
  end

  test "should create collection item" do
    visit collection_items_url
    click_on "New collection item"

    fill_in "Code", with: @collection_item.code
    fill_in "Location", with: @collection_item.location
    fill_in "Notes", with: @collection_item.notes
    click_on "Create Collection item"

    assert_text "Collection item was successfully created"
    click_on "Back"
  end

  test "should update Collection item" do
    visit collection_item_url(@collection_item)
    click_on "Edit this collection item", match: :first

    fill_in "Code", with: @collection_item.code
    fill_in "Location", with: @collection_item.location
    fill_in "Notes", with: @collection_item.notes
    click_on "Update Collection item"

    assert_text "Collection item was successfully updated"
    click_on "Back"
  end

  test "should destroy Collection item" do
    visit collection_item_url(@collection_item)
    click_on "Destroy this collection item", match: :first

    assert_text "Collection item was successfully destroyed"
  end
end
