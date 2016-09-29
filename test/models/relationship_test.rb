require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  
  def setup
    @relationship = Relationship.new(follower_id: users(:tom).id,
                                     followed_id: users(:archer).id)
  end
  
  test "test should be valid" do
    assert @relationship.valid?
  end
  
  test "should require a follower_id" do
    @relationship.follower_id = nil
    assert_not @relationship.valid?
  end
  
  test "should require a followed_id" do
    @relationship.followed_id = nil
    assert_not @relationship.valid?
  end
end
