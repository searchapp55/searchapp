require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  test "has searchable fields" do
    assert Ticket::SEARCHABLE_FIELDS.size > 0
  end
end
