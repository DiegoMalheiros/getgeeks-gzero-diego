*Settings*
Documentation             Base Test

Library                   Browser
Library                   factories/Users.py
Library                   Collections

Resource                  actions/_SharedActions.robot
Resource                  actions/AuthActions.robot
Resource                  actions/SignupActions.robot
Resource                  actions/GeekActions.robot
Resource                  Helpers.robot
Resource                  Database.robot

*Variables*

${BASE_URL}         https://getgeeks-diego.herokuapp.com

*Keywords*
Start Session
    New Browser             chromium        headless=False   slowMo=00:00:00
    New Page                ${BASE_URL} 
    Set Viewport Size       1280    768

Finish Session
    Take Screenshot     


