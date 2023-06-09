require "test_helper"

class GuardiansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get guardians_index_url
    assert_response :success
  end
end
