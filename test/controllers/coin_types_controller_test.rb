require "test_helper"

class CoinTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coin_type = coin_types(:one)
  end

  test "should get index" do
    get coin_types_url
    assert_response :success
  end

  test "should get new" do
    get new_coin_type_url
    assert_response :success
  end

  test "should create coin_type" do
    assert_difference("CoinType.count") do
      post coin_types_url, params: { coin_type: { composition: @coin_type.composition, denomination: @coin_type.denomination, first_issued: @coin_type.first_issued, last_issued: @coin_type.last_issued, name: @coin_type.name, style: @coin_type.style } }
    end

    assert_redirected_to coin_type_url(CoinType.last)
  end

  test "should show coin_type" do
    get coin_type_url(@coin_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_coin_type_url(@coin_type)
    assert_response :success
  end

  test "should update coin_type" do
    patch coin_type_url(@coin_type), params: { coin_type: { composition: @coin_type.composition, denomination: @coin_type.denomination, first_issued: @coin_type.first_issued, last_issued: @coin_type.last_issued, name: @coin_type.name, style: @coin_type.style } }
    assert_redirected_to coin_type_url(@coin_type)
  end

  test "should destroy coin_type" do
    assert_difference("CoinType.count", -1) do
      delete coin_type_url(@coin_type)
    end

    assert_redirected_to coin_types_url
  end
end
