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

    @FindBy(name="firstname")
    private WebElementFacade firstname;

    @FindBy(name="lastname")
    private WebElementFacade surname;

    @FindBy(name="birthday_day")
    private WebElementFacade dateOfBirth;

    @FindBy(name="birthday_month")
    private WebElementFacade monthOfBirth;

    @FindBy(name="birthday_year")
    private WebElementFacade yearOfBirth;

    @FindBy(name="websubmit")
    private WebElementFacade btnSubmit;

    @FindBy(name="reg_email__")
    private WebElementFacade mobilePhonOrEmail;

    @FindBy(xpath="//body/div[@id='u_0_0_p8']/div[@id='globalContainer']/div[@id='content']/div[1]/div[1]/img[1]")
    private WebElementFacade facebookIcon;

    @FindBy(id = "error_box")
    private WebElementFacade wrongCredentBox;

    @FindBy(id = "locked_box")
    private WebElementFacade lockedBox;

    @FindBy(xpath = "//label[contains(text(),'Female')]")
    private WebElementFacade femaleGender;

    @FindBy(xpath = "//label[contains(text(),'Male')]")
    private WebElementFacade maleGender;

    @FindBy(xpath = "//label[contains(text(),'Custom')]")
    private WebElementFacade customGender;

    @FindBy(id = "mount_p_0_pC")
    private WebElementFacade nextPageAfterRegister;

    @FindBy(name = "preferred_pronoun")
    private WebElementFacade preferredPronoun;

    @FindBy(name = "custom_gender")
    private WebElementFacade customGenderOptional;

    @FindBy(id = "password_step_input")
    private WebElementFacade passwordInput;

    @FindBy(id = "reg_error_inner")
    private WebElementFacade registrationFailBox;

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

    public void typeFistName(String firstName) {
        firstname.type(firstName);
    }

    public void typeSurname(String surName) {
        surname.type(surName);
    }

    public void selectDateOfBirth(String date) {
        dateOfBirth.selectByVisibleText(date);
    }

    public void selectMonthOfBirth(String month) {
        monthOfBirth.selectByVisibleText(month);
    }

    public void selectYearOfBirth(String year) {
        yearOfBirth.selectByVisibleText(year);
    }

    public void selectGenderByGenderOption(String genderOption) {
        if (genderOption.equalsIgnoreCase("female"))
            femaleGender.click();
        else if (genderOption.equalsIgnoreCase("male"))
            maleGender.click();
        else if (genderOption.equalsIgnoreCase("custom"))
            customGender.click();
    }

    public void clickButtonSignUp() {
        btnSubmit.click();
    }

    public Boolean isNextStepAfterRegisPageVisible() {
        return nextPageAfterRegister.isVisible();
    }

    public void inputMobilePhoneOrEmail(String addData) {
        mobilePhonOrEmail.type(addData);
    }

    public void selectPreferredPronoun(String pronoun) {
        preferredPronoun.selectByVisibleText(pronoun);
    }

    public void inputCustomGenderOptional(String gender) {
        customGenderOptional.type(gender);
    }

    public void inputPassword(String password) {
        passwordInput.type(password);
    }

    public Boolean isRegistrationFailBoxVisible() {
        return registrationFailBox.isVisible();
    }

    public Boolean isEmailFormVisibleClickableEnable() {
        return userEmail.isVisible() && userEmail.isClickable() && userEmail.isEnabled();
    }

    public Boolean isPasswordFormVisibleClickableEnable() {
        return userPassword.isVisible() && userPassword.isClickable() && userPassword.isEnabled();
    }

    public Boolean isButtonLoginVisibleClickableEnable() {
        return btnLogin.isVisible() && btnLogin.isClickable() && btnLogin.isEnabled();
    }

}
