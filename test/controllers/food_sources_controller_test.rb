require 'test_helper'

class FoodSourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_source = food_sources(:one)
  end

  test "should get index" do
    get food_sources_url, as: :json
    assert_response :success
  end

  test "should create food_source" do
    assert_difference('FoodSource.count') do
      post food_sources_url, params: { food_source: { location_id: @food_source.location_id, name: @food_source.name, notes: @food_source.notes, user_id: @food_source.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show food_source" do
    get food_source_url(@food_source), as: :json
    assert_response :success
  end

  test "should update food_source" do
    patch food_source_url(@food_source), params: { food_source: { location_id: @food_source.location_id, name: @food_source.name, notes: @food_source.notes, user_id: @food_source.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy food_source" do
    assert_difference('FoodSource.count', -1) do
      delete food_source_url(@food_source), as: :json
    end

    assert_response 204
  end
end
