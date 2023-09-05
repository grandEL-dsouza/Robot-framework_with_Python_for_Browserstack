# BrowserStack Integration with Robot Framework Selenium (Python)

![BrowserStack Logo](https://d98b8t1nnulk5.cloudfront.net/production/images/layout/logo-header.png?1469004780) 

## Prerequisite
```
python3 should be installed
```

## Setup
* Clone the repo 
  ```
  git clone -b sdk https://github.com/browserstack/robot-browserstack.git
  ```
* It is recommended to use a virtual environment to install dependencies. To create a virtual environment:
  ```
  python3 -m venv env
  source env/bin/activate # on Mac
  env\Scripts\activate # on Windows
  ```
* Install dependencies 
  ```
  pip install -r requirements.txt
  ```  

## Set BrowserStack Credentials
* Add your BrowserStack username and access key in the `browserstack.yml` config fle.
* You can also export them as environment variables, `BROWSERSTACK_USERNAME` and `BROWSERSTACK_ACCESS_KEY`:

  #### For Linux/MacOS
    ```
    export BROWSERSTACK_USERNAME=<browserstack-username>
    export BROWSERSTACK_ACCESS_KEY=<browserstack-access-key>
    ```
  #### For Windows
    ```
    set BROWSERSTACK_USERNAME=<browserstack-username>
    set BROWSERSTACK_ACCESS_KEY=<browserstack-access-key>
    
    setx BROWSERSTACK_USERNAME=<browserstack-username>
    setx BROWSERSTACK_ACCESS_KEY=<browserstack-access-key>
    ```

## Running tests

* To run sample tests:
  - To run the sample tests in parallel across the platforms defined in the `browserstack.yml` file, run:
    ```
    browserstack-sdk robot ./tests/test-*.robot
    ```
* To run tests on locally hosted websites:
  - To run the local test in parallel across the platforms defined in the `browserstack.yml` file, run:
    ```
    browserstack-sdk robot ./tests/local-test.robot
    ```

Understand how many parallel sessions you need by using our [Parallel Test Calculator](https://www.browserstack.com/automate/parallel-calculator?ref=github)

## Additional Resources
* [Documentation for writing Automate test scripts in Python](https://www.browserstack.com/automate/python)
* [Customizing your tests on BrowserStack](https://www.browserstack.com/automate/capabilities)
* [Browsers & mobile devices for selenium testing on BrowserStack](https://www.browserstack.com/list-of-browsers-and-platforms?product=automate)
* [Using REST API to access information about your tests via the command-line interface](https://www.browserstack.com/automate/rest-api)
