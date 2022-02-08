require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    get articles_path

    assert_response :success
  end

  test "should get new" do
    get articles_new_path

    assert_response :success
  end

  test "should create article" do
    post articles_path, params: { article: { name: 'Name', body: 'Body' } }

    assert_response :redirect
  end
end
