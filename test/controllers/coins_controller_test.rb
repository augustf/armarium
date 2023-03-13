require "test_helper"

class CoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coin = coins(:one)
  end

  test "should get index" do
    get coins_url
    assert_response :success
  end

  test "should get new" do
    get new_coin_url
    assert_response :success
  end

  test "should create coin" do
    assert_difference("Coin.count") do
      post coins_url, params: { coin: { certification: @coin.certification, certification_number: @coin.certification_number, coin_type_id: @coin.coin_type_id, collection_item_id: @coin.collection_item_id, condition: @coin.condition, defects: @coin.defects, distribution: @coin.distribution, mintage: @coin.mintage, mintmark: @coin.mintmark, year: @coin.year } }
    end

    assert_redirected_to coin_url(Coin.last)
  end

  test "should show coin" do
    get coin_url(@coin)
    assert_response :success
  end

  test "should get edit" do
    get edit_coin_url(@coin)
    assert_response :success
  end

  test "should update coin" do
    patch coin_url(@coin), params: { coin: { certification: @coin.certification, certification_number: @coin.certification_number, coin_type_id: @coin.coin_type_id, collection_item_id: @coin.collection_item_id, condition: @coin.condition, defects: @coin.defects, distribution: @coin.distribution, mintage: @coin.mintage, mintmark: @coin.mintmark, year: @coin.year } }
    assert_redirected_to coin_url(@coin)
  end

  test "should destroy coin" do
    assert_difference("Coin.count", -1) do
      delete coin_url(@coin)
    end

    assert_redirected_to coins_url
  end
end
