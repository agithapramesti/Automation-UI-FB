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

    @FindBy(xpath="//body/div[@id='u_0_0_p8']/div[@id='globalContainer']/div[@id='content']/div[1]/div[1]/img[1]")
    private WebElementFacade facebookIcon;

    @FindBy(id = "error_box")
    private WebElementFacade wrongCredentBox;

    @FindBy(id = "locked_box")
    private WebElementFacade lockedBox;


    public void typeEmailAddressOnEmailForm(String email) {
        userEmail.type(email);
    }

    public void typePasswordOnPassForm(String password) {
        userPassword.type(password);
    }

    public void clickButtonLoginFacebook() {
        btnLogin.click();
    }

    public Boolean isFacebookIconVisible() {
        return facebookIcon.isVisible();
    }

    public Boolean isWrongCredentialBoxVisible() {
        return wrongCredentBox.isVisible();
    }

    public Boolean isLockedBoxVisible() {
        return lockedBox.isVisible();
    }
}
