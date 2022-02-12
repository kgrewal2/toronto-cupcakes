require "test_helper"

class CupcakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cupcake = cupcakes(:one)
  end

  test "should get index" do
    get cupcakes_url
    assert_response :success
  end

  test "should get new" do
    get new_cupcake_url
    assert_response :success
  end

  test "should create cupcake" do
    assert_difference("Cupcake.count") do
      post cupcakes_url, params: { cupcake: { description: @cupcake.description, flavor: @cupcake.flavor, photo_url: @cupcake.photo_url, price: @cupcake.price, title: @cupcake.title } }
    end

    assert_redirected_to cupcake_url(Cupcake.last)
  end

  test "should show cupcake" do
    get cupcake_url(@cupcake)
    assert_response :success
  end

  test "should get edit" do
    get edit_cupcake_url(@cupcake)
    assert_response :success
  end

  test "should update cupcake" do
    patch cupcake_url(@cupcake), params: { cupcake: { description: @cupcake.description, flavor: @cupcake.flavor, photo_url: @cupcake.photo_url, price: @cupcake.price, title: @cupcake.title } }
    assert_redirected_to cupcake_url(@cupcake)
  end

  test "should destroy cupcake" do
    assert_difference("Cupcake.count", -1) do
      delete cupcake_url(@cupcake)
    end

    assert_redirected_to cupcakes_url
  end
end
