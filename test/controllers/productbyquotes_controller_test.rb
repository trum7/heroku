require 'test_helper'

class ProductbyquotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productbyquote = productbyquotes(:one)
  end

  test "should get index" do
    get productbyquotes_url, as: :json
    assert_response :success
  end

  test "should create productbyquote" do
    assert_difference('Productbyquote.count') do
      post productbyquotes_url, params: { productbyquote: { param1: @productbyquote.param1, param2: @productbyquote.param2, param3: @productbyquote.param3, param4: @productbyquote.param4, product_id: @productbyquote.product_id, quantity: @productbyquote.quantity, quote_id: @productbyquote.quote_id } }, as: :json
    end

    assert_response 201
  end

  test "should show productbyquote" do
    get productbyquote_url(@productbyquote), as: :json
    assert_response :success
  end

  test "should update productbyquote" do
    patch productbyquote_url(@productbyquote), params: { productbyquote: { param1: @productbyquote.param1, param2: @productbyquote.param2, param3: @productbyquote.param3, param4: @productbyquote.param4, product_id: @productbyquote.product_id, quantity: @productbyquote.quantity, quote_id: @productbyquote.quote_id } }, as: :json
    assert_response 200
  end

  test "should destroy productbyquote" do
    assert_difference('Productbyquote.count', -1) do
      delete productbyquote_url(@productbyquote), as: :json
    end

    assert_response 204
  end
end
