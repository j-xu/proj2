require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  include Devise::TestHelpers

  def setup
  	user = users(:one)
  	sign_in user
  end

  test "should create post" do
  	assert_difference('Post.count') do
  		post :create, post: {body: 'text'}
  	end

  	assert_redirected_to user_path(user)
  end

end