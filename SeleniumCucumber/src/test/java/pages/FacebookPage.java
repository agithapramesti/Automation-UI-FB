package pages;

import net.serenitybdd.annotations.DefaultUrl;
import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

@DefaultUrl("https://www.facebook.com/")
public class FacebookPage extends PageObject {

    @FindBy(name="email")
    private WebElementFacade userEmail;

    @FindBy(name="pass")
    private WebElementFacade userPassword;

    @FindBy(name="login")
    private WebElementFacade btnLogin;

    public void typeEmailAddressOnEmailForm(String email) {
        userEmail.type(email);
    }

    public void typePasswordOnPassForm(String password) {
        userPassword.type(password);
    }

    public void clickButtonLoginFacebook() {
        btnLogin.click();
    }
}
