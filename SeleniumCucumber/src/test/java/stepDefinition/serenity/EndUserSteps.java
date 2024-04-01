package stepDefinition.serenity;

import pages.FacebookPage;
import net.thucydides.core.annotations.Step;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;

public class EndUserSteps {

    FacebookPage facebookPage;

    @Step
    public void openFacebookPage() {
        facebookPage.open();
    }

    @Step
    public void inputEmailAddress(String userEmail) {
        facebookPage.typeEmailAddressOnEmailForm(userEmail);
    }

    @Step
    public void inputPassword(String pass) {
        facebookPage.typePasswordOnPassForm(pass);
    }

    @Step
    public void clickButtonForLoginFacebook() {
        facebookPage.clickButtonLoginFacebook();
    }

    @Step
    public void isFacebookLoginVisible() {
        assertThat("facebook icon is not visible",
                facebookPage.isFacebookIconVisible(), equalTo(true));
    }

    @Step
    public void isWrongCredentialVisible() {
        assertThat("wrong credential box is not visible",
                facebookPage.isWrongCredentialBoxVisible(), equalTo(true));
    }

    @Step
    public void isLockedBoxVisible() {
        assertThat("locked box is not visible",
                facebookPage.isLockedBoxVisible(), equalTo(true));
    }

    @Step
    public void inputFirstName(String firstName) {
        facebookPage.typeFistName(firstName);
    }

    @Step
    public void inputSurName(String surname) {
        facebookPage.typeSurname(surname);
    }

    @Step
    public void selectDateOfBirth(String date) {
        facebookPage.selectDateOfBirth(date);
    }

    @Step
    public void selectMonthOfBirth(String month) {
        facebookPage.selectMonthOfBirth(month);
    }

    @Step
    public void selectYearOfBirth(String year) {
        facebookPage.selectYearOfBirth(year);
    }

    @Step
    public void selectGenderByGenderOption(String genderOption) {
        facebookPage.selectGenderByGenderOption(genderOption);
    }

    @Step
    public void clickButtonSignUp() {
        facebookPage.clickButtonSignUp();
    }

    @Step
    public void isNextStepAfterRegisPageVisible() {
        assertThat("registration is fail",
                facebookPage.isNextStepAfterRegisPageVisible(), equalTo(true));
    }

    @Step
    public void inputMobilePhoneOrEmail(String data) {
        facebookPage.inputMobilePhoneOrEmail(data);
    }

    @Step
    public void selectPreferredPronoun(String pronoun) {
        facebookPage.selectPreferredPronoun(pronoun);
    }

    @Step
    public void inputCustomGenderOptional(String gender) {
        facebookPage.inputCustomGenderOptional(gender);
    }

    @Step
    public void inputPasswordUser(String password) {
        facebookPage.inputPassword(password);
    }

    @Step
    public void isRegistrationFailBoxVisible() {
        assertThat("registration fail is not visible ",
                facebookPage.isRegistrationFailBoxVisible(), equalTo(true));
    }

    @Step
    public void isEmailFormVisibleClickableEnable() {
        assertThat("email form is different with expcted",
                facebookPage.isEmailFormVisibleClickableEnable(), equalTo(true));
    }

    @Step
    public void isPasswordFormVisibleClickableEnable() {
        assertThat("password form is different with expcted",
                facebookPage.isPasswordFormVisibleClickableEnable(), equalTo(true));
    }

    @Step
    public void isButtonLoginVisibleClickableEnable() {
        assertThat("login button is different with expcted",
                facebookPage.isButtonLoginVisibleClickableEnable(), equalTo(true));
    }
}
