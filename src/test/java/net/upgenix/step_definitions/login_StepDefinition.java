package net.upgenix.step_definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.upgenix.pages.accountPage;
import net.upgenix.pages.loginPage;
import net.upgenix.pages.logoutPage;
import net.upgenix.utilities.BrowserUtils;
import net.upgenix.utilities.ConfigurationReader;
import net.upgenix.utilities.Driver;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.*;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;

public class login_StepDefinition {
    loginPage loginPage = new loginPage();
    accountPage accountPage = new accountPage();

    WebDriverWait wait = new WebDriverWait(Driver.getDriver(), 3);


    String userName;
    logoutPage logoutPage = new logoutPage();


    @When("User login, enters  username and password from excel in email box")
    public void userLoginEntersUsernameAndPasswordFromExcelInEmailBox() throws IOException {

        String filePath = "username.xlsx";

        FileInputStream fileInputStream = new FileInputStream(filePath);

        XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream);

        XSSFSheet sheet = workbook.getSheet("Sayfa1");

        Driver.getDriver().get(ConfigurationReader.getProperty("url"));


        for (int i = 1; i <= sheet.getLastRowNum(); i++) {
            String email = sheet.getRow(i).getCell(0).toString();
            String password = sheet.getRow(i).getCell(1).toString();
            XSSFCell resultCell = sheet.getRow(i).createCell(2);
            loginPage.emailBox.sendKeys(sheet.getRow(i).getCell(0).toString());
              loginPage.passwordBox.sendKeys(sheet.getRow(i).getCell(1).toString());
              loginPage.loginButton.click();

            if (Driver.getDriver().getTitle().equals("Login | Best solution for startups")){
                resultCell.setCellValue("FAIL");
                Driver.getDriver().navigate().back();
                loginPage.emailBox.clear();
                continue;
            }else {
                Driver.getDriver().manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
                WebDriverWait wait = new WebDriverWait(Driver.getDriver(), 15);
                wait.until(ExpectedConditions.titleIs("#Inbox - Odoo"));
                if (Driver.getDriver().getTitle().contains("#Inbox - Odoo")) {

                    resultCell.setCellValue("PASS");
                }else {
                    resultCell.setCellValue("FAIL");
                }
                accountPage.accountName.click();
                accountPage.logoutButton.click();
            }

        }

        FileOutputStream outputStream = new FileOutputStream(filePath);
        workbook.write(outputStream);

        outputStream.close();
        workbook.close();
        fileInputStream.close();

    }
    @Given("user should go login page")
    public void user_should_go_login_page() {
        Driver.getDriver().get(ConfigurationReader.getProperty("url"));
        Assert.assertTrue(Driver.getDriver().getTitle().equals(ConfigurationReader.getProperty("loginTitle")));
    }
    @When("User enters  {string}  in email box")
    public void user_enters_in_email_box(String userName) {
        loginPage.emailBox.sendKeys(userName);
       this.userName=userName;
    }
    @When("User enters {string} in password box")
    public void user_enters_in_password_box(String string) {
        loginPage.passwordBox.sendKeys(string);
    }



    @When("account name should be displayed")
    public void account_name_should_be_displayed() {
        wait.until(ExpectedConditions.visibilityOf(accountPage.accountName));
        Assert.assertTrue((accountPage.accountName.getText()).toLowerCase().contains(userName.substring(0, userName.indexOf("@"))));
    }
    @When("User logs out by clicking account name firstly and after log out button")
    public void user_logs_out_by_clicking_account_name_firstly_and_after_log_out_button() {
        accountPage.accountName.click();
        accountPage.logoutButton.click();
    }
    @Then("User ends up in login page automatically after click log out button.")
    public void user_ends_up_in_login_page_automatically_after_click_log_out_button() {
        wait.until(ExpectedConditions.titleIs(ConfigurationReader.getProperty("loginTitle")));
        Assert.assertTrue(Driver.getDriver().getTitle().equals(ConfigurationReader.getProperty("loginTitle")));
    }


    @And("User clicks the step back button")
    public void userClicksTheStepBackButton() {
        Driver.getDriver().navigate().back();
    }

    @Then("User should not go to the home page again")
    public void userShouldNotGoToTheHomePageAgain() {
        wait.until(ExpectedConditions.visibilityOf(logoutPage.messageAfterBackButton));
        Assert.assertTrue(logoutPage.messageAfterBackButton.isDisplayed());

    }


    @When("User clicks login button to login")
    public void user_clicks_login_button_to_login() {

        loginPage.loginButton.click();
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
       String message = Driver.getDriver().findElement(By.name("login")).getAttribute("validationMessage");
        Assert.assertEquals(message,arg0);
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
