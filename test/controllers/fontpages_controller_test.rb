require 'test_helper'

class FontpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fontpage = fontpages(:one)
  end

  test "should get index" do
    get fontpages_url
    assert_response :success
  end

  test "should get new" do
    get new_fontpage_url
    assert_response :success
  end

  test "should create fontpage" do
    assert_difference('Fontpage.count') do
      post fontpages_url, params: { fontpage: { body: @fontpage.body, heading: @fontpage.heading, image: @fontpage.image, title1: @fontpage.title1, title2: @fontpage.title2 } }
    end

    assert_redirected_to fontpage_url(Fontpage.last)
  end

  test "should show fontpage" do
    get fontpage_url(@fontpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_fontpage_url(@fontpage)
    assert_response :success
  end

  test "should update fontpage" do
    patch fontpage_url(@fontpage), params: { fontpage: { body: @fontpage.body, heading: @fontpage.heading, image: @fontpage.image, title1: @fontpage.title1, title2: @fontpage.title2 } }
    assert_redirected_to fontpage_url(@fontpage)
  end

  test "should destroy fontpage" do
    assert_difference('Fontpage.count', -1) do
      delete fontpage_url(@fontpage)
    end

    assert_redirected_to fontpages_url
  end
end
