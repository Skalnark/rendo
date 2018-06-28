require "application_system_test_case"

class PacientsTest < ApplicationSystemTestCase
  setup do
    @pacient = pacients(:one)
  end

  test "visiting the index" do
    visit pacients_url
    assert_selector "h1", text: "Pacients"
  end

  test "creating a Pacient" do
    visit pacients_url
    click_on "New Pacient"

    fill_in "Birth", with: @pacient.birth
    fill_in "City", with: @pacient.city
    fill_in "Dayperiod", with: @pacient.dayPeriod
    fill_in "Frequencedrinking", with: @pacient.frequenceDrinking
    fill_in "Frequencesmoking", with: @pacient.frequenceSmoking
    fill_in "Name", with: @pacient.name
    fill_in "Neighborhood", with: @pacient.neighborhood
    fill_in "Observation", with: @pacient.observation
    fill_in "Occupation", with: @pacient.occupation
    fill_in "Oralsex", with: @pacient.oralSex
    fill_in "Phone", with: @pacient.phone
    fill_in "Protesis", with: @pacient.protesis
    fill_in "Sex", with: @pacient.sex
    fill_in "Starteddrinking", with: @pacient.startedDrinking
    fill_in "Startedtabagism", with: @pacient.startedTabagism
    fill_in "State", with: @pacient.state
    fill_in "Stopeddrinking", with: @pacient.stopedDrinking
    fill_in "Stopedsmoking", with: @pacient.stopedSmoking
    fill_in "Street", with: @pacient.street
    fill_in "Totalexposition", with: @pacient.totalExposition
    fill_in "Whatdrinked", with: @pacient.whatDrinked
    fill_in "Whatsmoked", with: @pacient.whatSmoked
    fill_in "Whohadcancer", with: @pacient.whoHadCancer
    click_on "Create Pacient"

    assert_text "Pacient was successfully created"
    click_on "Back"
  end

  test "updating a Pacient" do
    visit pacients_url
    click_on "Edit", match: :first

    fill_in "Birth", with: @pacient.birth
    fill_in "City", with: @pacient.city
    fill_in "Dayperiod", with: @pacient.dayPeriod
    fill_in "Frequencedrinking", with: @pacient.frequenceDrinking
    fill_in "Frequencesmoking", with: @pacient.frequenceSmoking
    fill_in "Name", with: @pacient.name
    fill_in "Neighborhood", with: @pacient.neighborhood
    fill_in "Observation", with: @pacient.observation
    fill_in "Occupation", with: @pacient.occupation
    fill_in "Oralsex", with: @pacient.oralSex
    fill_in "Phone", with: @pacient.phone
    fill_in "Protesis", with: @pacient.protesis
    fill_in "Sex", with: @pacient.sex
    fill_in "Starteddrinking", with: @pacient.startedDrinking
    fill_in "Startedtabagism", with: @pacient.startedTabagism
    fill_in "State", with: @pacient.state
    fill_in "Stopeddrinking", with: @pacient.stopedDrinking
    fill_in "Stopedsmoking", with: @pacient.stopedSmoking
    fill_in "Street", with: @pacient.street
    fill_in "Totalexposition", with: @pacient.totalExposition
    fill_in "Whatdrinked", with: @pacient.whatDrinked
    fill_in "Whatsmoked", with: @pacient.whatSmoked
    fill_in "Whohadcancer", with: @pacient.whoHadCancer
    click_on "Update Pacient"

    assert_text "Pacient was successfully updated"
    click_on "Back"
  end

  test "destroying a Pacient" do
    visit pacients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pacient was successfully destroyed"
  end
end
