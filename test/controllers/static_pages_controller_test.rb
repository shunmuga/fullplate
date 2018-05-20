require 'test_helper'

def setup
  @base_title = "Full Plate: A Webportal connecting food"
end

def pantry
  GET 	/foods/:id
  @pantry = Foods.find(:all)
end

def food_form

end


class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "home | #{@base_title}"
  end

end
