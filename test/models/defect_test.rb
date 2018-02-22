require 'test_helper'

class DefectTest < ActiveSupport::TestCase
  def setup do
    @defect=Defect.create(title:"lohith", articles:"first article", issue_type:2, priority:1, status:1)
  end
  test "Defect record is valid" do
    assert @defect.valid?
  end

  test "title must be present" do
    @post.title=""
    assert_not @post.valid?
    assert
  end

  test "article must be present" do
    @post.articles=""
    assert_not @post.valid?
    assert
  end

  test "issue_type should be one of the dropdowm value" do
    @post.issue_type="unknown"
    assert_not @post.valid?
    assert
  end

  test "priority should be one of the dropdowm value" do
    @post.issue_prioritytype="unknown"
    assert_not @post.valid?
    assert
  end


  test "status should be one of the dropdowm value" do
    @post.status="unknown"
    assert_not @post.valid?
    assert
  end

end
