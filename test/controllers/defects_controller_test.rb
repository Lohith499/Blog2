require 'test_helper'

class DefectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @defect = defects(:one)
  end

  test "should get index" do
    get defects_url
    assert_response :success
  end

  test "should get new" do
    get new_defect_url
    assert_response :success
  end

  test "should create defect" do
    assert_difference('Defect.count') do
      post defects_url, params: { defect: { articles: @defect.articles, issue_type: @defect.issue_type, priority: @defect.priority, status: @defect.status, title: @defect.title } }
    end

    assert_redirected_to defect_url(Defect.last)
  end

  test "should show defect" do
    get defect_url(@defect)
    assert_response :success
  end

  test "should get edit" do
    get edit_defect_url(@defect)
    assert_response :success
  end

  test "should update defect" do
    patch defect_url(@defect), params: { defect: { articles: @defect.articles, issue_type: @defect.issue_type, priority: @defect.priority, status: @defect.status, title: @defect.title } }
    assert_redirected_to defect_url(@defect)
  end

  test "should destroy defect" do
    assert_difference('Defect.count', -1) do
      delete defect_url(@defect)
    end

    assert_redirected_to defects_url
  end
end
