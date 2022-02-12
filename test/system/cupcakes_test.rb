require "application_system_test_case"

class CupcakesTest < ApplicationSystemTestCase
  setup do
    @cupcake = cupcakes(:one)
  end

  test "visiting the index" do
    visit cupcakes_url
    assert_selector "h1", text: "Cupcakes"
  end

  test "should create cupcake" do
    visit cupcakes_url
    click_on "New cupcake"

    fill_in "Description", with: @cupcake.description
    fill_in "Flavor", with: @cupcake.flavor
    fill_in "Photo url", with: @cupcake.photo_url
    fill_in "Price", with: @cupcake.price
    fill_in "Title", with: @cupcake.title
    click_on "Create Cupcake"

    assert_text "Cupcake was successfully created"
    click_on "Back"
  end

  test "should update Cupcake" do
    visit cupcake_url(@cupcake)
    click_on "Edit this cupcake", match: :first

    fill_in "Description", with: @cupcake.description
    fill_in "Flavor", with: @cupcake.flavor
    fill_in "Photo url", with: @cupcake.photo_url
    fill_in "Price", with: @cupcake.price
    fill_in "Title", with: @cupcake.title
    click_on "Update Cupcake"

    assert_text "Cupcake was successfully updated"
    click_on "Back"
  end

  test "should destroy Cupcake" do
    visit cupcake_url(@cupcake)
    click_on "Destroy this cupcake", match: :first

    assert_text "Cupcake was successfully destroyed"
  end
end
