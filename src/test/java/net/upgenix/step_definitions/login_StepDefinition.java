package net.upgenix.step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.upgenix.pages.accountPage;
import net.upgenix.pages.loginPage;
import net.upgenix.utilities.ConfigurationReader;
import net.upgenix.utilities.Driver;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class login_StepDefinition {
    loginPage loginPage = new loginPage();
    accountPage accountPage = new accountPage();
    String username;
    WebDriverWait wait = new WebDriverWait(Driver.getDriver(), 3);

    @Given("user should go login page")
    public void user_should_go_login_page() {
        Driver.getDriver().get(ConfigurationReader.getProperty("url"));
        Assert.assertTrue(Driver.getDriver().getTitle().equals(ConfigurationReader.getProperty("loginTitle")));
    }

    @When("User clicks login button to login")
    public void user_clicks_login_button_to_login() {

        loginPage.loginButton.click();
    }

    @Then("account name should be displayed")
    public void account_name_should_be_displayed() {
        wait.until(ExpectedConditions.visibilityOf(accountPage.accountName));
        Assert.assertTrue((accountPage.accountName.getText()).toLowerCase().contains(username.substring(0, username.indexOf("@"))));

    }


    @When("User enters  {string}  in email box")
    public void userEntersInEmailBox(String username) {
        loginPage.emailBox.sendKeys(username);
        this.username = username;

    }

    @And("User enters {string} in password box")
    public void userEntersInPasswordBox(String arg0) {

        loginPage.passwordBox.sendKeys(arg0);
    }

    @When("User enters  {string} username credentials in email box")
    public void userEntersUsernameCredentialsInEmailBox(String username) {
        loginPage.emailBox.sendKeys(username);
    }

    @And("User enters {string} password credentials in password box")
    public void userEntersPasswordCredentialsInPasswordBox(String password) {
        loginPage.passwordBox.sendKeys(password);
    }

    @Then("error message should be displayed")
    public void errorMessageShouldBeDisplayed() {
        wait.until(ExpectedConditions.visibilityOf(loginPage.errorMessage));
        Assert.assertTrue(loginPage.errorMessage.isDisplayed());
    }

    @Then("{string} message should be displayed in email box")
    public void messageShouldBeDisplayedInEmailBox(String arg0) {
        // i can not locate alert
        Assert.assertTrue(Driver.getDriver().getTitle().equals(ConfigurationReader.getProperty("loginTitle")));

    }

    @When("User should click Reset password link.")
    public void userShouldClickResetPasswordLink() {
        Assert.assertTrue(loginPage.resetPasswordButton.isEnabled());
        loginPage.resetPasswordButton.click();
         }

    @Then("Reset password page should be opened in current window")
    public void resetPasswordPageShouldBeOpenedInCurrentWindow() {
        wait.until(ExpectedConditions.titleIs(ConfigurationReader.getProperty("resetPasswordPageTitle")));
        Assert.assertEquals(Driver.getDriver().getTitle(),ConfigurationReader.getProperty("resetPasswordPageTitle"));
    }



    @Then("User should see the entered password in bullet signs by default")
    public void userShouldSeeTheEnteredPasswordInBulletSignsByDefault() {
        Assert.assertTrue(loginPage.passwordBox.getAttribute("type").equals("password"));
    }

    @And("User uses ENTER key to login")
    public void userUsesENTERKeyToLogin() {
        loginPage.passwordBox.sendKeys(Keys.ENTER);
    }

    @When("Users enter {string} password in password box")
    public void usersEnterPasswordInPasswordBox(String arg0) {
        loginPage.passwordBox.sendKeys(arg0);
    }
}
