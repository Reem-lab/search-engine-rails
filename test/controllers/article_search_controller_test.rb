require 'test_helper'

class ArticleSearchControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get article_search_index_url
    assert_response :success
  end
end
