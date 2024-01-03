require "test_helper"

class ScadulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scadule = scadules(:one)
  end

  test "should get index" do
    get scadules_url
    assert_response :success
  end

  test "should get new" do
    get new_scadule_url
    assert_response :success
  end

  test "should create scadule" do
    assert_difference("Scadule.count") do
      post scadules_url, params: { scadule: { description: @scadule.description, end_time: @scadule.end_time, start_time: @scadule.start_time, title: @scadule.title } }
    end

    assert_redirected_to scadule_url(Scadule.last)
  end

  test "should show scadule" do
    get scadule_url(@scadule)
    assert_response :success
  end

  test "should get edit" do
    get edit_scadule_url(@scadule)
    assert_response :success
  end

  test "should update scadule" do
    patch scadule_url(@scadule), params: { scadule: { description: @scadule.description, end_time: @scadule.end_time, start_time: @scadule.start_time, title: @scadule.title } }
    assert_redirected_to scadule_url(@scadule)
  end

  test "should destroy scadule" do
    assert_difference("Scadule.count", -1) do
      delete scadule_url(@scadule)
    end

    assert_redirected_to scadules_url
  end
end
