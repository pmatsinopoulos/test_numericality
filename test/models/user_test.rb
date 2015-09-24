require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "non numeric value throws exception" do
    u = User.new age: "foo"
    assert_raises ActiveRecord::RecordInvalid do
      u.save!
    end
  end

  test "non numeric value renders user invalid" do
    u = User.new age: "foo"
    assert_equal false, u.valid?
    assert_equal true, u.errors[:age].include?("is not a number")
  end
end
