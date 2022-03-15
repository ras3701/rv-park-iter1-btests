from selenium import webdriver
import os
import django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'bdd_example.settings')
django.setup()

from behave import fixture, use_fixture
from django.contrib.auth.models import User
from django.test.runner import DiscoverRunner
from django.test.testcases import LiveServerTestCase
# from organization.models import Organization

#
#
# class BaseTestCase(LiveServerTestCase):
#     @classmethod
#     def setUpClass(cls):
#         User.objects.create_superuser(username='admin', password='admin', email='admin@admin.com')
#
#         User.objects.create(username='Bill', password='billgates@123', email='billgates@microsoft.com',
#                             first_name='Bill', last_name='Gates', is_active=True, is_staff=True)
#         Organization.objects.create(name="Microsoft", registration_code="INR2EJN1ERAN0W5ZP974",
#                                     established_on="1975-04-04", address="Redmond, Washington, United States")
#         super(BaseTestCase, cls).setUpClass()
#
#     @classmethod
#     def tearDownClass(cls):
#         User.objects.filter().delete()
#         super(BaseTestCase, cls).tearDownClass()



@fixture
def django_test_runner(context):
    django.setup()
    context.test_runner = DiscoverRunner()
    context.test_runner.setup_test_environment()
    context.old_db_config = context.test_runner.setup_databases()
    yield
    context.test_runner.teardown_databases(context.old_db_config)
    context.test_runner.teardown_test_environment()




@fixture
def django_test_case(context):
    context.test_case = LiveServerTestCase
    context.test_case.setUpClass()
    yield
    context.test_case.tearDownClass()
    context.selenium.quit()
    del context.test_case


def before_all(context):
    django.setup()
    context.test_runner = DiscoverRunner()
    context.test_runner.setup_test_environment()
    context.old_db_config = context.test_runner.setup_databases()
    yield
    context.test_runner.teardown_databases(context.old_db_config)
    context.test_runner.teardown_test_environment()


def after_scenario(context, scenario):
    try:
        # Signout
        context.browser.find_element_by_id("id_sign_out_button").click()
    except:
        pass

def before_all(context):
    context.browser = webdriver.Chrome()
    context.browser.implicitly_wait(1)
    context.server_home_page_url = "https://test-rv-park.herokuapp.com/"
    context.server_signin_url = context.server_home_page_url + "signin/"
    context.server_admin_dashboard_url = context.server_home_page_url + "edithome/"
    context.server_signup_url = context.server_home_page_url + "signup/"
    context.admin_user_name = "admin"
    context.admin_password = "Aggie@123"

def after_all(context):
    context.browser.quit()

def before_feature(context,feature):
    pass