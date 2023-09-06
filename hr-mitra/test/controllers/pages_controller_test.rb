require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about-us" do
    get pages_about-us_url
    assert_response :success
  end

  test "should get services" do
    get pages_services_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get privacy-policy" do
    get pages_privacy-policy_url
    assert_response :success
  end

end
