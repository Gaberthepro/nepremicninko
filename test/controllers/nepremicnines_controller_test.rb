require 'test_helper'

class NepremicninesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nepremicnine = nepremicnines(:one)
  end

  test "should get index" do
    get nepremicnines_url
    assert_response :success
  end

  test "should get new" do
    get new_nepremicnine_url
    assert_response :success
  end

  test "should create nepremicnine" do
    assert_difference('Nepremicnine.count') do
      post nepremicnines_url, params: { nepremicnine: { address: @nepremicnine.address, bathrooms: @nepremicnine.bathrooms, name: @nepremicnine.name, price: @nepremicnine.price, rooms: @nepremicnine.rooms } }
    end

    assert_redirected_to nepremicnine_url(Nepremicnine.last)
  end

  test "should show nepremicnine" do
    get nepremicnine_url(@nepremicnine)
    assert_response :success
  end

  test "should get edit" do
    get edit_nepremicnine_url(@nepremicnine)
    assert_response :success
  end

  test "should update nepremicnine" do
    patch nepremicnine_url(@nepremicnine), params: { nepremicnine: { address: @nepremicnine.address, bathrooms: @nepremicnine.bathrooms, name: @nepremicnine.name, price: @nepremicnine.price, rooms: @nepremicnine.rooms } }
    assert_redirected_to nepremicnine_url(@nepremicnine)
  end

  test "should destroy nepremicnine" do
    assert_difference('Nepremicnine.count', -1) do
      delete nepremicnine_url(@nepremicnine)
    end

    assert_redirected_to nepremicnines_url
  end
end
