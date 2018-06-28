require 'test_helper'

class PacientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pacient = pacients(:one)
  end

  test "should get index" do
    get pacients_url
    assert_response :success
  end

  test "should get new" do
    get new_pacient_url
    assert_response :success
  end

  test "should create pacient" do
    assert_difference('Pacient.count') do
      post pacients_url, params: { pacient: { birth: @pacient.birth, city: @pacient.city, dayPeriod: @pacient.dayPeriod, frequenceDrinking: @pacient.frequenceDrinking, frequenceSmoking: @pacient.frequenceSmoking, name: @pacient.name, neighborhood: @pacient.neighborhood, observation: @pacient.observation, occupation: @pacient.occupation, oralSex: @pacient.oralSex, phone: @pacient.phone, protesis: @pacient.protesis, sex: @pacient.sex, startedDrinking: @pacient.startedDrinking, startedTabagism: @pacient.startedTabagism, state: @pacient.state, stopedDrinking: @pacient.stopedDrinking, stopedSmoking: @pacient.stopedSmoking, street: @pacient.street, totalExposition: @pacient.totalExposition, whatDrinked: @pacient.whatDrinked, whatSmoked: @pacient.whatSmoked, whoHadCancer: @pacient.whoHadCancer } }
    end

    assert_redirected_to pacient_url(Pacient.last)
  end

  test "should show pacient" do
    get pacient_url(@pacient)
    assert_response :success
  end

  test "should get edit" do
    get edit_pacient_url(@pacient)
    assert_response :success
  end

  test "should update pacient" do
    patch pacient_url(@pacient), params: { pacient: { birth: @pacient.birth, city: @pacient.city, dayPeriod: @pacient.dayPeriod, frequenceDrinking: @pacient.frequenceDrinking, frequenceSmoking: @pacient.frequenceSmoking, name: @pacient.name, neighborhood: @pacient.neighborhood, observation: @pacient.observation, occupation: @pacient.occupation, oralSex: @pacient.oralSex, phone: @pacient.phone, protesis: @pacient.protesis, sex: @pacient.sex, startedDrinking: @pacient.startedDrinking, startedTabagism: @pacient.startedTabagism, state: @pacient.state, stopedDrinking: @pacient.stopedDrinking, stopedSmoking: @pacient.stopedSmoking, street: @pacient.street, totalExposition: @pacient.totalExposition, whatDrinked: @pacient.whatDrinked, whatSmoked: @pacient.whatSmoked, whoHadCancer: @pacient.whoHadCancer } }
    assert_redirected_to pacient_url(@pacient)
  end

  test "should destroy pacient" do
    assert_difference('Pacient.count', -1) do
      delete pacient_url(@pacient)
    end

    assert_redirected_to pacients_url
  end
end
