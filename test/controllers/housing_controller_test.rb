require 'test_helper'

class HousingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get housing_index_url
    assert_response :success
  end

end
