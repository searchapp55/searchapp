require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "has searchable fields" do
    assert User::SEARCHABLE_FIELDS.size > 0
  end

  test "has array fields defined" do
    assert_equal Array, User::ARRAY_FIELDS.class
  end
end
