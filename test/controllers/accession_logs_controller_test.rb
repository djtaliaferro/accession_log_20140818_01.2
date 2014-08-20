require 'test_helper'

class AccessionLogsControllerTest < ActionController::TestCase
  setup do
    @accession_log = accession_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accession_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accession_log" do
    assert_difference('AccessionLog.count') do
      post :create, accession_log: { date_received: @accession_log.date_received, date_received_physicians_office: @accession_log.date_received_physicians_office, user_id: @accession_log.user_id }
    end

    assert_redirected_to accession_log_path(assigns(:accession_log))
  end

  test "should show accession_log" do
    get :show, id: @accession_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accession_log
    assert_response :success
  end

  test "should update accession_log" do
    patch :update, id: @accession_log, accession_log: { date_received: @accession_log.date_received, date_received_physicians_office: @accession_log.date_received_physicians_office, user_id: @accession_log.user_id }
    assert_redirected_to accession_log_path(assigns(:accession_log))
  end

  test "should destroy accession_log" do
    assert_difference('AccessionLog.count', -1) do
      delete :destroy, id: @accession_log
    end

    assert_redirected_to accession_logs_path
  end
end
