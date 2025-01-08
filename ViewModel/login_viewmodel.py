class LoginViewModel:
    def __init__(self, model_manager):
        self.model_manager = model_manager

    def authenticate_user(self, employee_id, password):
        employee_model = self.model_manager.get_model("employees")
        position = employee_model.validate_credential(employee_id,password)
        if position:
            return position
        return None
