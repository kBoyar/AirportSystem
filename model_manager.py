from Model.employee_model import EmployeeModel


class ModelManager:
    def __init__(self,db_connection):
        self.models = {
            "employees": EmployeeModel(db_connection)
        }

    def get_model(self, model_name):
        return self.models.get(model_name)
