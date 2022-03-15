from behave import *
import selenium
from selenium import webdriver
from selenium.webdriver.chrome.options import Options

use_step_matcher("re")


@given("I am on login page")
def step_impl(context):
    # chrome_options = Options()
    # chrome_options.add_argument("--headless")
    # context.selenium = webdriver.chrome(options=chrome_options)
    br = context.browser

    # get the website url
    br.get("http://localhost:8000/")


@when("I submit a valid login credential")
def step_impl(context):
    # Fill the login information
    username = context.browser.find_element_by_id("id_username")
    username.send_keys("test")

    password = context.browser.find_element_by_id("id_password")
    password.send_keys("cameron1234")

    # Locate login button and click on it

    context.browser.find_element_by_id("id_login_button").click()


@then("I am redirected to the login page success page")
def step_impl(context):
    # context.test.assertEquals(context.title, "CameronRV")
    url = context.browser.current_url
    print(url)
    context.test.assertEquals(url, "http://localhost:8000/")
    context.browser.find_element_by_id


@when("I submit an invalid login credential")
def step_impl(context):
    username = context.browser.find_element_by_id("id_username")
    username.send_keys("test")

    password = context.browser.find_element_by_id("id_password")
    password.send_keys("test")

    # Locate login button and click on it

    context.browser.find_element_by_id("id_login_button").click()



@then("I am redirected to login page fail page")
def step_impl(context):
    url = context.browser.current_url
    print(url)
    context.test.assertEquals(url, "http://localhost:8000/login/?next=/")


