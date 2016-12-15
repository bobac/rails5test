require 'test_helper'

class CfgModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cfg_module = cfg_modules(:one)
  end

  test "should get index" do
    get cfg_modules_url
    assert_response :success
  end

  test "should get new" do
    get new_cfg_module_url
    assert_response :success
  end

  test "should create cfg_module" do
    assert_difference('CfgModule.count') do
      post cfg_modules_url, params: { cfg_module: { description: @cfg_module.description, name: @cfg_module.name } }
    end

    assert_redirected_to cfg_module_url(CfgModule.last)
  end

  test "should show cfg_module" do
    get cfg_module_url(@cfg_module)
    assert_response :success
  end

  test "should get edit" do
    get edit_cfg_module_url(@cfg_module)
    assert_response :success
  end

  test "should update cfg_module" do
    patch cfg_module_url(@cfg_module), params: { cfg_module: { description: @cfg_module.description, name: @cfg_module.name } }
    assert_redirected_to cfg_module_url(@cfg_module)
  end

  test "should destroy cfg_module" do
    assert_difference('CfgModule.count', -1) do
      delete cfg_module_url(@cfg_module)
    end

    assert_redirected_to cfg_modules_url
  end
end
