package com.qa.helpdesk.stepDefinitions;

import com.gemini.generic.api.utils.ApiInvocation;
import com.gemini.generic.api.utils.ProjectSampleJson;
import com.gemini.generic.api.utils.Request;
import com.gemini.generic.api.utils.Response;
import com.gemini.generic.reporting.GemTestReporter;
import com.gemini.generic.reporting.STATUS;
import com.gemini.generic.utils.ProjectConfigData;
import com.ibm.icu.impl.duration.impl.Utils;
import com.qa.helpdesk.Utils.CommonUtils;
import com.qa.helpdesk.Utils.GlobalVariable;
import io.cucumber.java.en.Given;
import org.apache.http.HttpStatus;
import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class StepDefinition {
    int status;
    Logger logger = LoggerFactory.getLogger(StepDefinition.class);

    Response response;
    String message;
    JSONObject jsonObject, responseJSON, saveResignJSONObject;

    String actualName, expectedName, actualNumber, expectedNumber;

    String actualEmail;

    String expectedEmail;

    String expectedId;

    String actualId;

    ArrayList<String> expectedArrayList = new ArrayList<>();
    ArrayList<String> actualArrayList = new ArrayList<>();


    @Given("Set endpoint and method and Description {string} and {string} and {string}")
    public void setEndpointAndMethodAndDescription(String url, String method, String Description) {
        try {
            Map<String, String> header = new HashMap<>();
            header.put("Authorization", "Bearer " + GlobalVariable.token);
            status = CommonUtils.HitAPI(url, method, header, Description).getStatus();
        } catch (Exception e) {
            logger.error("API was not hit successfully", e);
            GemTestReporter.addTestStep("Trigger " + url + " API for " + Description, "API was not successfully triggered", STATUS.FAIL);
        }
    }

    @Given("Set endpoint and method and Description and payload {string} and {string} and {string} and {string}")
    public void setParameters(String urlNameFromConfig, String method, String sampleName, String description) {
        HashMap<String, String> header = new HashMap<>();
        header.put("Authorization", "Bearer " + GlobalVariable.token);
        String step = "";
        try {
            response = CommonUtils.apiWithPayloads(urlNameFromConfig, method, header, step, sampleName);
            System.out.println("Response :" + response.getResponseBody());

            if (sampleName.equalsIgnoreCase("AddCategory_POST")) {
                GlobalVariable.id = response.getResponseBodyJson().getAsJsonObject().get("data").getAsJsonObject().get("id").getAsString();
                System.out.println("id :" + GlobalVariable.id);
            }
            if (sampleName.equalsIgnoreCase("NewINCTicket_POST")) {
                GlobalVariable.ticketID = response.getResponseBodyJson().getAsJsonObject().get("data").getAsJsonObject().get("ticketID").getAsString();
                System.out.println("Ticket ID :" + GlobalVariable.ticketID);
            }
            if (sampleName.equalsIgnoreCase("ReqTicketQuickApproval")) {
                GlobalVariable.ticketID1 = response.getResponseBodyJson().getAsJsonObject().get("data").getAsJsonObject().get("ticketID").getAsString();
                System.out.println("Ticket ID :" + GlobalVariable.ticketID1);
            }

//            if (sampleName.equalsIgnoreCase("Assignment_POST")){
//                GlobalVariable._id = response.getResponseBodyJson().getAsJsonObject().get("data").getAsJsonObject().get("_id").getAsString();
//                System.out.println("_id :" + GlobalVariable._id);
//            }
        } catch (Exception e) {
            logger.error("API was not hit successfully", e);
            GemTestReporter.addTestStep("Trigger " + urlNameFromConfig, "API was not successfully triggered", STATUS.FAIL);
        }
    }

    @Given("Set endpoint and method and Description and payload {string} and {string} and {string} and {string} and new")
    public void categoryAPIS(String urlNameFromConfig, String method, String sampleName, String description) {
        jsonObject = CommonUtils.updateDetails(sampleName);
        HashMap<String, String> header = new HashMap<>();
        header.put("Authorization", "Bearer " + GlobalVariable.token);
        String step = "";
        try {
            response = CommonUtils.apiWithPayloadsForCategory(urlNameFromConfig, method, header, step, jsonObject);
            System.out.println("Response :" + response.getResponseBody());
        } catch (Exception e) {
            logger.error("API was not hit successfully", e);
            GemTestReporter.addTestStep("Trigger " + urlNameFromConfig, "API was not successfully triggered", STATUS.FAIL);
        }

    }
}

