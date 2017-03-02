require 'test_helper'

class ConfrenzControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get confrenz_index_url
    assert_response :success
  end

end
