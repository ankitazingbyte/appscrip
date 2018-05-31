require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get products_title:string_url
    assert_response :success
  end

  test "should get description:string" do
    get products_description:string_url
    assert_response :success
  end

  test "should get image:string" do
    get products_image:string_url
    assert_response :success
  end

end
