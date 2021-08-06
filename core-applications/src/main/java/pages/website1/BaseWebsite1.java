package pages.website1;

import libraries.PageObjectBase;
import org.openqa.selenium.WebDriver;

public class BaseWebsite1 extends PageObjectBase {

    public BaseWebsite1(WebDriver driver) {
        super(driver);
    }

    //==================================================================================================================
    // Page Navigation
    //==================================================================================================================

    public PageAccess PageAccess() {
        return new PageAccess(driver);
    }


    public void waitForPageToComplete() {
        control.waitForPageComplete();
    }

}