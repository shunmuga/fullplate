require 'test_helper'

def setup
  @base_title = "Full Plate: A Webportal connecting food"
end


class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "home | #{@base_title}"
  end

end
