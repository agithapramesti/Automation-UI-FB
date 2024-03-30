package stepDefinition.serenity;

import pages.FacebookPage;
import net.thucydides.core.annotations.Step;

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
}
