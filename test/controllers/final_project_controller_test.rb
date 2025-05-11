require "test_helper"

class FinalProjectControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get final_project_index_url
    assert_response :success
  end
end
