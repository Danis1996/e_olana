require 'test_helper'

class HommesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @homme = hommes(:one)
  end

  test "should get index" do
    get hommes_url
    assert_response :success
  end

  test "should get new" do
    get new_homme_url
    assert_response :success
  end

  test "should create homme" do
    assert_difference('Homme.count') do
      post hommes_url, params: { homme: {  } }
    end

    assert_redirected_to homme_url(Homme.last)
  end

  test "should show homme" do
    get homme_url(@homme)
    assert_response :success
  end

  test "should get edit" do
    get edit_homme_url(@homme)
    assert_response :success
  end

  test "should update homme" do
    patch homme_url(@homme), params: { homme: {  } }
    assert_redirected_to homme_url(@homme)
  end

  test "should destroy homme" do
    assert_difference('Homme.count', -1) do
      delete homme_url(@homme)
    end

    assert_redirected_to hommes_url
  end
end
