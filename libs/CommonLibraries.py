from logging import exception
from venv import logger

import urllib3
import pandas as pd
from robot.api.deco import keyword


class CommonLibraries():

    @keyword('Get Data Frame')
    def get_data_frame(self, file_name):
        logger.info(file_name)
        if file_name.endswith('.csv'):
            df = pd.read_csv(file_name, delimiter=' ')
            return df
        elif file_name.endswith('.xlsx'):
            df = pd.read_excel(file_name)
            return df
        else:
            return "please pass valid files like .csv/.xlsx"


