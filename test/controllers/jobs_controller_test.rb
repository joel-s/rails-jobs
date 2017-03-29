require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  test "get index" do
    get :index
    assert_response :success
  end

  test "add a valid job" do
    flunk "Not implemented"
  end

  test "add a job without poster" do
    flunk "Not implemented"
  end

  test "add a job without category" do
    flunk "Not implemented"
  end

  test "add a job without location" do
    flunk "Not implemented"
  end

  test "add a job without status" do
    flunk "Not implemented"
  end

  test "add a job without description" do
    flunk "Not implemented"
  end

  test "correctly edit an existing job" do
    flunk "Not implemented"
  end

  test "incorrectly edit an existing job" do
    # Set poster to an empty string
    flunk "Not implemented"
  end

  # We could do a bunch more test cases of invalid editing, but that's not
  # really necessary since the validation and error reporting code is all
  # shared by the creation and editing processes. The invaliid creation tests
  # thoroughly exercise the error reporting code.
end
