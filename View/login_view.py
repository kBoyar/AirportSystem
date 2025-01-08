from ui.login.ui import Ui_Login
class LoginView(QMainWindow,Ui_Login):
    def __init__(self,view_model):
        super().__init__()
        self.view_model = view_model
        self.setupUi(self)
        self.login_button.clicked.connect(self.login)

    def login(self):
        employee_id = self.id_input.text()
        password = self.password_input.text()

        pos = self.view_model.authenticate_user(employee_id,password)

        if pos:
            self.navigate_to_main_window()

    def navigate_to_main_window(self):
        pass