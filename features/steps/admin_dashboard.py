from behave import *

use_step_matcher("re")


@when("I select the Edit Home Page Contents option on admin dashboard")
def step_impl(context):
    context.browser.find_element_by_link_text("Edit Home Page Contents").click()


@then("I am redirected to the Edit Home Page Contents page")
def step_impl(context):
    context.test.assertEquals(context.browser.current_url[:-1], context.server_admin_dashboard_url)


@given("I am on the Edit Home Page Contents Page")
def step_impl(context):
    context.execute_steps(u"""
             Given I am on login page
             When I submit a valid login credential
             And I select the Edit Home Page Contents option on admin dashboard
        """)


use_step_matcher("parse")
@when("I modify the About Us Header field to {text}")
def step_impl(context,text):
    about_us_field = context.browser.find_element_by_id("id_about_header")
    about_us_field.clear()
    about_us_field.send_keys(text)


@when("hit the submit button")
def step_impl(context):
    context.browser.find_element_by_xpath('//button[text()="Submit"]').submit()


use_step_matcher("parse")
@then("the text for About Us Header field should match {text}")
def step_impl(context, text):
    about_us_field = context.browser.find_element_by_id("id_about_header")
    context.test.assertEquals(about_us_field.get_attribute('value'), text)
    context.browser.get(context.server_home_page_url)
    about_us_home = context.browser.find_element_by_xpath("/html/body/div[1]/div/h1")
    context.test.assertEquals(about_us_home.get_attribute('textContent'), text)



use_step_matcher("parse")
@when("I modify the About Us Body field to {text}")
def step_impl(context,text):
    about_us_field = context.browser.find_element_by_id("id_about_body")
    about_us_field.clear()
    about_us_field.send_keys(text)

use_step_matcher("parse")
@then("the text for About Us Body field should match {text}")
def step_impl(context, text):
    about_us_field = context.browser.find_element_by_id("id_about_body")
    context.test.assertEquals(about_us_field.get_attribute('value'), text)
    context.browser.get(context.server_home_page_url)
    about_us_home = context.browser.find_element_by_xpath("//*[@id='about']/div/div/p")
    context.test.assertEquals(about_us_home.get_attribute('textContent'), text)