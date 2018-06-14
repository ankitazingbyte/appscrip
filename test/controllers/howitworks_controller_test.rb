require 'test_helper'

class HowitworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @howitwork = howitworks(:one)
  end

  test "should get index" do
    get howitworks_url
    assert_response :success
  end

  test "should get new" do
    get new_howitwork_url
    assert_response :success
  end

  test "should create howitwork" do
    assert_difference('Howitwork.count') do
      post howitworks_url, params: { howitwork: { body: @howitwork.body, heading: @howitwork.heading, image: @howitwork.image, title1: @howitwork.title1, title2: @howitwork.title2 } }
    end

    assert_redirected_to howitwork_url(Howitwork.last)
  end

  test "should show howitwork" do
    get howitwork_url(@howitwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_howitwork_url(@howitwork)
    assert_response :success
  end

  test "should update howitwork" do
    patch howitwork_url(@howitwork), params: { howitwork: { body: @howitwork.body, heading: @howitwork.heading, image: @howitwork.image, title1: @howitwork.title1, title2: @howitwork.title2 } }
    assert_redirected_to howitwork_url(@howitwork)
  end

  test "should destroy howitwork" do
    assert_difference('Howitwork.count', -1) do
      delete howitwork_url(@howitwork)
    end

    assert_redirected_to howitworks_url
  end
end
