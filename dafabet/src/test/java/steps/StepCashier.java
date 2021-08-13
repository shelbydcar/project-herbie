package steps;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;


public class StepCashier extends BaseStep {

    BaseStep base;

    public StepCashier(BaseStep base) {
        this.base = base;
    }

    @When("^the player clicks the ([^\"]*) button$")
    public void thePlayerIsAtSite(String button) throws Throwable {
        workflowDafabet.clickButton(button);
    }

    @Then("^the ([^\"]*) page is loaded successfully$")
    public void thePageIsLoadedSuccessfully(String page) throws Throwable {
        softAssert.assertTrue(workflowDafabet.validatePage(page, baseUsername), "FAILED: The correct username is not reflected in the Cashier Page.");
    }
}