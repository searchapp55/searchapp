require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  test "has searchable fields" do
    assert Organization::SEARCHABLE_FIELDS.size > 0
  end

  test "has array fields defined" do
    assert_equal Array, Organization::ARRAY_FIELDS.class
  end
end
