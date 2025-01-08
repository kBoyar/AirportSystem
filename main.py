from Utils.db_connection import create_db_connection
from ViewModel.viewmodel import ViewModel
from model_manager import ModelManager


def main():
    db_connection = create_db_connection()
    model_manager = ModelManager(db_connection)
    view_model = ViewModel(model_manager)
    db_connection.close()


if __name__ == '__main__':
    main()

