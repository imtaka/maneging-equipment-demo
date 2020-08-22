require 'test_helper'

class SalesofficesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get salesoffices_index_url
    assert_response :success
  end

  test "should get edit" do
    get salesoffices_edit_url
    assert_response :success
  end

end
