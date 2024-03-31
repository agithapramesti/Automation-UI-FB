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
}
