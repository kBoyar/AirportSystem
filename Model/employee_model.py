import hashlib


class EmployeeModel:
    def __init__(self, db_connection):
        self.db_connection = db_connection

    def get_employees(self):
        cursor = self.db_connection.cursor(dictionary=True)
        cursor.execute("SELECT * FROM employees")
        return cursor.fetchall()

    def add_employee(self, first_name, last_name, position, password):
        cursor = self.db_connection.cursor()

        employee_query = "INSERT INTO employees(employee_firstname, employee_lastname, position_id) VALUES (%s, %s, %s)"
        cursor.execute(employee_query, (first_name, last_name, position))

        employee_id = cursor.lastrowid
        hashed_password = hash_password_sha256(password)
        password_query = "INSERT INTO passwords(employee_id, password_hash) VALUES (%s, %s)"
        cursor.execute(password_query, (employee_id, hashed_password))

        self.db_connection.commit()

    def edit_employee(self, selected, prop, value):
        cursor = self.db_connection.cursor()
        if property == "password":
            hashed_password = hash_password_sha256(value)
            query = "UPDATE password SET password=%s WHERE employee_id = %s"
            cursor.execute(query, (hashed_password, selected))
        else:
            query = "UPDATE employee SET %s=%s WHERE employee_id = %s"
        cursor.execute(query, (prop, value, selected))


def hash_password_sha256(password: str) -> str:
    sha256_hash = hashlib.sha256()
    sha256_hash.update(password.encode('utf-8'))
    return sha256_hash.hexdigest()