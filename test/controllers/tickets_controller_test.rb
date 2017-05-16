require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end
end
