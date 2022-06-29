package net.upgenix.pages;

import net.upgenix.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class loginPage {
    public loginPage(){
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy (xpath = "//button[.='Log in']")
    public WebElement loginButton;

    @FindBy(id = "login")
    public WebElement emailBox;

    @FindBy (id = "password")
    public WebElement passwordBox;

    @FindBy (xpath = "//p[@class='alert alert-danger']")
    public WebElement errorMessage;

    @FindBy(xpath = "//a[.='Reset Password']")
    public WebElement resetPasswordButton;
}
