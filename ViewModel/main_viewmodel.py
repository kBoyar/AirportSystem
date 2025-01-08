class MainViewModel:
    def __init__(self,model_manager):
        self.model_manager = model_manager

    def load_employees(self):
        employee_model = self.model_manager.get_model("employees")
        return employee_model.get_employees()

    def add_employee(self, first_name, last_name, position, password):
        employee_model = self.model_manager.get_model("employees")
        employee_model.add_employee(first_name,last_name,position,password)

    def edit_employee(self, selected, prop, value):
        employee_model = self.model_manager.get_model("employees")
        employee_model.edit_employee(selected, prop, value)
