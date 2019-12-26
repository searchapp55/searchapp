require 'test_helper'

class SearchServiceTest < ActiveSupport::TestCase
  test "can search for _id" do
    model = User
    field = "_id"
    query = "1"
    result = ::SearchService.call(model, field, query)
    assert_equal 1, result.first["_id"]
    assert_equal 1, result.size
  end

  test "can search for url" do
    model = User
    field = "url"
    query = "http://initech.zendesk.com/api/v2/users/1.json"
    result = ::SearchService.call(model, field, query)
    assert_equal 1, result.first["_id"]
    assert_equal query, result.first["url"]
    assert_equal 1, result.size
  end

  test "can search with non-standard characters" do
    model = Organization
    field = "details"
    query = "Artisân"
    result = ::SearchService.call(model, field, query)
    assert_equal 106, result.first["_id"]
    assert_equal query, result.first["details"]
    assert_equal 1, result.size
  end

  test "must search with case sensitivity" do
    model = Ticket
    field = "subject"
    query = "a Problem in Malawi"
    result = ::SearchService.call(model, field, query)
    assert_equal 0, result.size
  end

  test "testing correct use of case sensitivity" do
    model = Ticket
    field = "subject"
    query = "A Problem in Malawi"
    result = ::SearchService.call(model, field, query)
    assert_equal "13aafde0-81db-47fd-b1a2-94b0015803df", result.first["_id"]
    assert_equal query, result.first["subject"]
    assert_equal 1, result.size
  end

  test "can search for a tag" do
    model = Ticket
    field = "tags"
    query = "Minnesota"
    result = ::SearchService.call(model, field, query)
    assert_equal "fc5a8a70-3814-4b17-a6e9-583936fca909", result.first["_id"]
    assert_equal ["Minnesota", "New Jersey", "Texas", "Nevada"], result.first["tags"]
    assert_equal 1, result.size
  end

  test "can return multiple records" do
    model = User
    field = "active"
    query = "true"
    result = ::SearchService.call(model, field, query)
    assert result.size > 1
  end
end
