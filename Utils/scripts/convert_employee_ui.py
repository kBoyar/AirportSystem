import os
import subprocess


def convert_ui_to_py(ui_file_path, output_dir=None):
    if not os.path.exists(ui_file_path):
        raise FileNotFoundError(f"The .ui file '{ui_file_path}' does not exist.")
    base_name = os.path.splitext(os.path.basename(ui_file_path))[0]
    output_file = os.path.join(output_dir or os.path.dirname(ui_file_path), f"{base_name}.py")

    pyuic_command = f"pyuic5 {ui_file_path} -o {output_file}"

    try:
        subprocess.run(pyuic_command, shell=True, check=True)
        print(f"Successfully converted '{ui_file_path}' to '{output_file}'")
    except subprocess.CalledProcessError as e:
        print(f"Failed to convert .ui to .py: {e}")

    return output_file


ui_file = "../ui/login.ui"
output_directory = "../../View/ui"
convert_ui_to_py(ui_file, output_directory)
