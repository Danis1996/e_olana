require 'test_helper'

class DeclarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @declar = declars(:one)
  end

  test "should get index" do
    get declars_url
    assert_response :success
  end

  test "should get new" do
    get new_declar_url
    assert_response :success
  end

  test "should create declar" do
    assert_difference('Declar.count') do
      post declars_url, params: { declar: { reponse: @declar.reponse, typa_id: @declar.typa_id, user: @declar.user } }
    end

    assert_redirected_to declar_url(Declar.last)
  end

  test "should show declar" do
    get declar_url(@declar)
    assert_response :success
  end

  test "should get edit" do
    get edit_declar_url(@declar)
    assert_response :success
  end

  test "should update declar" do
    patch declar_url(@declar), params: { declar: { reponse: @declar.reponse, typa_id: @declar.typa_id, user: @declar.user } }
    assert_redirected_to declar_url(@declar)
  end

  test "should destroy declar" do
    assert_difference('Declar.count', -1) do
      delete declar_url(@declar)
    end

    assert_redirected_to declars_url
  end
end
