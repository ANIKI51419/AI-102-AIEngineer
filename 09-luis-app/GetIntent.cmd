@echo off

rem Set values for your Language Understanding app
set app_id=5558996b-4497-442e-8044-e259183868e9
set endpoint=https://languageunderstandingprac1-authoring.cognitiveservices.azure.com/
set key=34bff14a39414fc99f967e7d904a99d1

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"