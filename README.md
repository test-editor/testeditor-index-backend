# DEPRECATED test-editor-index-backend

:warning: **WARNING** This project is deprecated because the Test-Editor Team decided to merge the new created index backend with the existing Xtext backend in October 2018 :warning:

The new backend repository for the project :star:Test-Editor-Web:star: can be found under [test-editor-backend](https://github.com/test-editor/test-editor-backend) 

Xtext index backend for all testeditor languages

This project is derived from the generic xtext-index-backend project. 
It provides an endpoint for a BitBucket webhook (push) and a rest service for global scope requests that are collected from the xtext index held within this service.

## Run service locally

`./gradle run` starts this service on port 8100
