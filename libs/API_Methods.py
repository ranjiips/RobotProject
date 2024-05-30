from logging import exception
from venv import logger

import pandas as pd
from robot.api.deco import keyword, library

@library
class API_Methods():

    # def __init__(self):
    #     self.selLib = BuiltIn().get_library_instance("SelLib2")


    @keyword("Get Column values Data frames")
    def get_column_values(self, object):
        return list(object.columns)

