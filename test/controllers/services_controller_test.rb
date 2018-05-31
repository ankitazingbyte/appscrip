require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get services_title:string_url
    assert_response :success
  end

  test "should get description:string" do
    get services_description:string_url
    assert_response :success
  end

  test "should get image:string" do
    get services_image:string_url
    assert_response :success
  end

end
