from Utils.db_connection import create_db_connection
from ViewModel.login_viewmodel import LoginViewModel
from ViewModel.main_viewmodel import MainViewModel
from model_manager import ModelManager


def main():
    db_connection = create_db_connection()
    model_manager = ModelManager(db_connection)

    login_viewmodel = LoginViewModel(model_manager)
    main_viewmodel = MainViewModel(model_manager)
    db_connection.close()


if __name__ == '__main__':
    main()

