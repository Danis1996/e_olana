require 'test_helper'

class TypasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typa = typas(:one)
  end

  test "should get index" do
    get typas_url
    assert_response :success
  end

  test "should get new" do
    get new_typa_url
    assert_response :success
  end

  test "should create typa" do
    assert_difference('Typa.count') do
      post typas_url, params: { typa: { durre: @typa.durre, hafa: @typa.hafa, titre: @typa.titre, vue: @typa.vue } }
    end

    assert_redirected_to typa_url(Typa.last)
  end

  test "should show typa" do
    get typa_url(@typa)
    assert_response :success
  end

  test "should get edit" do
    get edit_typa_url(@typa)
    assert_response :success
  end

  test "should update typa" do
    patch typa_url(@typa), params: { typa: { durre: @typa.durre, hafa: @typa.hafa, titre: @typa.titre, vue: @typa.vue } }
    assert_redirected_to typa_url(@typa)
  end

  test "should destroy typa" do
    assert_difference('Typa.count', -1) do
      delete typa_url(@typa)
    end

    assert_redirected_to typas_url
  end
end
