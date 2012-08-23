require 'test_helper'

class SkillsControllerTest < ActionController::TestCase
  setup do
    @skill = skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill" do
    assert_difference('Skill.count') do
      post :create, skill: { certificate: @skill.certificate, experience: @skill.experience, image_uid: @skill.image_uid, language: @skill.language, level: @skill.level, name: @skill.name, panorama_crop: @skill.panorama_crop, scare_crop: @skill.scare_crop, software: @skill.software }
    end

    assert_redirected_to skill_path(assigns(:skill))
  end

  test "should show skill" do
    get :show, id: @skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skill
    assert_response :success
  end

  test "should update skill" do
    put :update, id: @skill, skill: { certificate: @skill.certificate, experience: @skill.experience, image_uid: @skill.image_uid, language: @skill.language, level: @skill.level, name: @skill.name, panorama_crop: @skill.panorama_crop, scare_crop: @skill.scare_crop, software: @skill.software }
    assert_redirected_to skill_path(assigns(:skill))
  end

  test "should destroy skill" do
    assert_difference('Skill.count', -1) do
      delete :destroy, id: @skill
    end

    assert_redirected_to skills_path
  end
end
