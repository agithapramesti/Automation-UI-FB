package stepDefinition;

import pages.FacebookPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import stepDefinition.serenity.EndUserSteps;

import java.util.logging.Logger;

import static org.hamcrest.MatcherAssert.assertThat;
import net.thucydides.core.annotations.Steps;

public class LoginFacebookSteps {

    @Steps
    EndUserSteps steps;
    Logger logger = Logger.getLogger(LoginFacebookSteps.class.getName());

    @Given("open login page and see input form for email and password")
    public void openLoginPageAndSeeInputFormForEmailAndPassword() {
        steps.openFacebookPage();
    }

    @When("put \"([^\"]*)\" address \"([^\"]*)\" on email input form")
    public void putEmailAddressOnEmailInputForm(String ability, String userEmail) {
        steps.inputEmailAddress(userEmail);
    }

    @And("put password \"([^\"]*)\" on password input form")
    public void putPasswordOnPasswordInputForm(String userPassword) {
        steps.inputPassword(userPassword);
    }

    @Then("click button login")
    public void clickButtonLogin() {
        steps.clickButtonForLoginFacebook();
    }

    @And("successfully login to facebook")
    public void successfullyLoginToFacebook() {
        steps.isFacebookLoginVisible();
    }

    @And("fail login to facebook")
    public void failLoginToFacebook() {
        steps.isWrongCredentialVisible();
    }

    @And("user can see locked account warning on facebook login page")
    public void userCanSeeLockedAccountWarningOnFacebookLoginPage() {
        steps.isLockedBoxVisible();
    }
}
