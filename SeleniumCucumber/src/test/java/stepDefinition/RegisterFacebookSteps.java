package stepDefinition;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.thucydides.core.annotations.Steps;
import stepDefinition.serenity.EndUserSteps;

public class RegisterFacebookSteps {

    @Steps
    EndUserSteps steps;

    @Given("open facebook and click create account button")
    public void openFacebookAndClickCreateAccountButton() {
    }

    @When("put first name \"([^\"]*)\" on first name input form")
    public void putFirstNameOnFirstNameInputForm(String firstName) {
        steps.inputFirstName(firstName);
    }

    @And("put surname \"([^\"]*)\" on surname input form")
    public void putSurnameOnSurnameInputForm(String surName) {
        steps.inputSurName(surName);
    }

    @And("select date \"([^\"]*)\" on date of birth")
    public void selectDateOnDateOfBirth(String dateOfBirth) {
        steps.selectDateOfBirth(dateOfBirth);
    }

    @And("select month \"([^\"]*)\" on month of birth")
    public void selectMonthOnMonthOfBirth(String monthOfBirth) {
        steps.selectMonthOfBirth(monthOfBirth);
    }

    @And("select year \"([^\"]*)\" on year of birth")
    public void selectYearOnYearOfBirth(String year) {
        steps.selectYearOfBirth(year);
    }

    @And("select gender \"([^\"]*)\" on gender option")
    public void selectGenderOnGenderOption(String gender) {
        steps.selectGenderByGenderOption(gender);
    }

    @Then("click sign up button")
    public void clickSignUpButton() {
        steps.clickButtonSignUp();
    }

    @And("success fully register account")
    public void successFullyRegisterAccount() {
        steps.isNextStepAfterRegisPageVisible();
    }

    @And("put number or email \"([^\"]*)\" on number or email input form")
    public void putNumberOrEmailOnNumberOrEmailInputForm(String phoneOrEmail) {
        steps.inputMobilePhoneOrEmail(phoneOrEmail);
    }

    @And("select pronoun \"([^\"]*)\"")
    public void selectPronoun(String pronoun) {
        steps.selectPreferredPronoun(pronoun);
    }

    @And("put gender as \"([^\"]*)\" on gender input form")
    public void putGenderAsOnGenderInputForm(String gender) {
        steps.inputCustomGenderOptional(gender);
    }

    @And("put password \"([^\"]*)\" on new password input form")
    public void putPasswordOnNewPasswordInputForm(String password) {
        steps.inputPasswordUser(password);
    }

    @And("fail to register facebook account")
    public void failToRegisterFacebookAccount() {
        steps.isRegistrationFailBoxVisible();
    }
}
