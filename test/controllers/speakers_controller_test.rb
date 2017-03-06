require 'test_helper'

class SpeakersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get speakers_index_url
    assert_response :success
  end

  test "should get new" do
    get speakers_new_url
    assert_response :success
  end

  test "should get show" do
    get speakers_show_url
    assert_response :success
  end

  test "should get edit" do
    get speakers_edit_url
    assert_response :success
  end

  test "should get delete" do
    get speakers_delete_url
    assert_response :success
  end

end
