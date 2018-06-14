require 'test_helper'

class GeneralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @general = generals(:one)
  end

  test "should get index" do
    get generals_url
    assert_response :success
  end

  test "should get new" do
    get new_general_url
    assert_response :success
  end

  test "should create general" do
    assert_difference('General.count') do
      post generals_url, params: { general: { answer: @general.answer, question: @general.question } }
    end

    assert_redirected_to general_url(General.last)
  end

  test "should show general" do
    get general_url(@general)
    assert_response :success
  end

  test "should get edit" do
    get edit_general_url(@general)
    assert_response :success
  end

  test "should update general" do
    patch general_url(@general), params: { general: { answer: @general.answer, question: @general.question } }
    assert_redirected_to general_url(@general)
  end

  test "should destroy general" do
    assert_difference('General.count', -1) do
      delete general_url(@general)
    end

    assert_redirected_to generals_url
  end
end
