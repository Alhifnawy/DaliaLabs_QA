# Dalia Labs QA Task
This is an automation task for the Email Subscription Widget for Dalia Task Website

## Tools
* This project is built with Robot Framework
* Python 3.8.3
* The project implements modular design by using the Page Object Model design pattern.
* An automated test execution report is generated from Robot Framework.
* PyCharm was used for the project.

## Setup
1. Clone the project to any location
2. Open project directory and open cmd in the project's directory
3. Install virtual Environment using the following command
> py -m pip install --user virtualenv
4. Create a new virtual environment using the following command
> py -m venv DLvenv
5. Activate the virtual environment using the following command
> DLvenv\Scripts\activate
6. Make sure pip is updated to the latest version using the following
> python -m pip install --upgrade pip
7. Install Requirments.txt file using the following command
> python -m pip install -r requirements.txt
8. Check the Requirments are installed using the following command
> pip list
9. Run the following command to execute the test cases
> robot -d Results Tests\EmailSubscription\EmailSubscription.robot


## Reports
The reports are found under the Results folder

## Authors
Abdurahman Alhifnawy
