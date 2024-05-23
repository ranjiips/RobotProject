import string
import urllib3
from robot.libraries.BuiltIn import BuiltIn
from Selenium2Library import Selenium2Library

class CommonFunctions(object):

    def __init__(self):
        urllib3.disable_warnings()

    def concatenate_two_string(self, string1, string2):
        return string1 + string2

    def get_webdriver_instance(self):
        se2lib = BuiltIn().get_library_instance('Selenium2Library')
        return Selenium2Library.._current_browser()

    def get_webdriver_instance(self):
        return self._current_browser()