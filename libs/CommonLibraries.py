from logging import exception
from venv import logger

import urllib3
import pandas as pd
from robot.api.deco import keyword, library
# from robot.libraries.BuiltIn import BuiltIn

@library
class CommonLibraries():

    # def __init__(self):
    #     self.selLib = BuiltIn().get_library_instance("SelLib2")

    @keyword('Get Data Frame')
    def get_data_frame(self, file_name, sheet=None):
        logger.info(file_name)
        if file_name.endswith('.csv'):
            df = pd.read_csv(file_name, delimiter=' ')
            return df
        elif file_name.endswith('.xlsx'):
            if sheet==None:
                df = pd.read_excel(file_name)
            else:
                df = pd.read_excel(file_name, sheet_name=sheet)
            return df
        else:
            return "please pass valid files like .csv/.xlsx"

    @keyword("Get Column values from Data frames")
    def get_column_values_df(self, object):
        return list(object.columns)

    @keyword("Get Row Count in Data Frames")
    def get_row_count_df(self, object):
        return len(object)

    @keyword("Fill the Student Registration Form")
    def fill_the_registration_form(self, file_path):
        # locator = BuiltIn().get_variable_value("${FIRST_NAME_LOCATOR}")
        # print(locator)
        # form_labels = self.selLib.get_webelements(" css:.form-label")
        # for label in form_labels:
        #     print(label.text)
        # self.selLib.input_text(self, " css:input#firstName'] ", "sample text")
        file_content=self.get_data_frame(file_path, "PersonDetails")
        # print(file_content)
        # print(file_content['FIRST_NAME'])
        headers=self.get_column_values_df(file_content)
        # print(headers)
        row_count=self.get_row_count_df(file_content)
        # print(row_count)
        rows = file_content[file_content['FIRST_NAME']=='Saranya']
        print(rows)
        print(rows['FIRST_NAME'], rows['LAST_NAME'], rows['HOBBIES'])
        # for index, row in file_content.iterrows():
        #     print(row['FIRST_NAME'], row['LAST_NAME'], row['HOBBIES'])

    @keyword("Get Record by UserID")
    def get_rows_by_userid(self, df):
        rows = df.loc[df['USER_ID'] == 1001]
        # print(rows.FIRST_NAME.values[0].strip())
        return str(rows.FIRST_NAME.values[0].strip()),str(rows.LAST_NAME.values[0].strip()),str(rows.EMAIL.values[0].strip()),str(rows.GENDER.values[0].strip()),str(rows.MOBILENUM.values[0]),str(rows.DOB.values[0]),str(rows.SUBJECTS.values[0].strip()),str(rows.HOBBIES.values[0].strip()),str(rows.ADDRESS.values[0].strip()),str(rows.STATE.values[0].strip()),str(rows.CITY.values[0].strip())



