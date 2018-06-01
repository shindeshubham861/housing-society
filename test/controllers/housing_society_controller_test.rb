require 'test_helper'

class HousingSocietyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get housing_society_index_url
    assert_response :success
  end

end
