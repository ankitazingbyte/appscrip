require 'test_helper'

class EcommercesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ecommerce = ecommerces(:one)
  end

  test "should get index" do
    get ecommerces_url
    assert_response :success
  end

  test "should get new" do
    get new_ecommerce_url
    assert_response :success
  end

  test "should create ecommerce" do
    assert_difference('Ecommerce.count') do
      post ecommerces_url, params: { ecommerce: { description: @ecommerce.description, image: @ecommerce.image, title: @ecommerce.title } }
    end

    assert_redirected_to ecommerce_url(Ecommerce.last)
  end

  test "should show ecommerce" do
    get ecommerce_url(@ecommerce)
    assert_response :success
  end

  test "should get edit" do
    get edit_ecommerce_url(@ecommerce)
    assert_response :success
  end

  test "should update ecommerce" do
    patch ecommerce_url(@ecommerce), params: { ecommerce: { description: @ecommerce.description, image: @ecommerce.image, title: @ecommerce.title } }
    assert_redirected_to ecommerce_url(@ecommerce)
  end

  test "should destroy ecommerce" do
    assert_difference('Ecommerce.count', -1) do
      delete ecommerce_url(@ecommerce)
    end

    assert_redirected_to ecommerces_url
  end
end
