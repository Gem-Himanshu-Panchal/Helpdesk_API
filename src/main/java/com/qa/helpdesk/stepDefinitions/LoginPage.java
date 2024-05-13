package com.qa.helpdesk.stepDefinitions;

import com.gemini.generic.api.utils.Response;
import com.qa.helpdesk.Utils.CommonUtils;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LoginPage extends CommonUtils {
    int status;
    static Response response;

    Logger logger = LoggerFactory.getLogger(StepDefinition.class);

    @Given("Set endpoint {string} and method {string} and payload {string}")
    public void Login(String url, String method, String payload) throws Exception {
        response = CommonUtils.loginUser(url, method, payload, "Login User");
        status = response.getStatus();
    }

    @Then("Verify Status code {int}")
    public void check_status_code(int Expected) {
        CommonUtils.VerifyStatusCode(Expected, status);
    }
    @Then("Verify login Status code {int}")
    public void check_code(int Expected) {
        CommonUtils.VerifyStatusCode(Expected, status);
    }

    @Given("Set credentials endpoint and method and SampleName {string} and {string} and {string}")
    public void wrongLogin(String url, String method, String payload) {
        response = CommonUtils.loginUser(url, method, payload, "");
        status = response.getStatus();
    }

}