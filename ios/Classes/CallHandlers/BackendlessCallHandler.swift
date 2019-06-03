//
//  BackendlessCallHandler.swift
//  Flutter-SDK
//
//  Created by Andrii Bodnar on 4/25/19.
//  Copyright © 2019 Andrii Bodnar. All rights reserved.
//

import Foundation
import Flutter

// MARK: -
// MARK: - BackendlessCallHandler
class BackendlessCallHandler: FlutterCallHandlerProtocol {
    
    // MARK: -
    // MARK: - Constants
    private enum Methods {
        static let initApp = "Backendless.initApp"
        static let getApiKey = "Backendless.getApiKey"
        static let getApplicationId = "Backendless.getApplicationId"
        static let getNotificationIdGeneratorInitValue = "Backendless.getNotificationIdGeneratorInitValue"
        static let getPushTemplatesAsJson = "Backendless.getPushTemplatesAsJson"
        static let getUrl = "Backendless.getUrl"
        static let isInitialized = "Backendless.isInitialized"
        static let saveNotificationIdGeneratorState = "Backendless.saveNotificationIdGeneratorState"
        static let savePushTemplates = "Backendless.savePushTemplates"
        static let setUIState = "Backendless.setUIState"
        static let setUrl = "Backendless.setUrl"
    }
    
    private enum Args {
        static let applicationId = "applicationId"
        static let apiKey = "apiKey"
        static let url = "url"
    }
    
    // MARK: - 
    // MARK: - Backendless Reference
    private let backendless = SwiftBackendlessSdkPlugin.backendless
    
    // MARK: -
    // MARK: - Route Flutter Call
    func routeFlutterCall(_ call: FlutterMethodCall, _ result: @escaping FlutterResult) {
        let arguments: [String: Any] = call.arguments.flatMap(cast) ?? [:]
        
        switch call.method {
        case Methods.initApp:
            initApp(arguments, result)
        case Methods.getApiKey:
            getApiKey(arguments, result)
        case Methods.getApplicationId:
            getApplicationId(arguments, result)
        case Methods.getNotificationIdGeneratorInitValue:
            getNotificationIdGeneratorInitValue(arguments, result)
        case Methods.getPushTemplatesAsJson:
            getPushTemplatesAsJson(arguments, result)
        case Methods.getUrl:
            getUrl(arguments, result)
        case Methods.isInitialized:
            isInitialized(arguments, result)
        case Methods.saveNotificationIdGeneratorState:
            saveNotificationIdGeneratorState(arguments, result)
        case Methods.savePushTemplates:
            savePushTemplates(arguments, result)
        case Methods.setUIState:
            setUIState(arguments, result)
        case Methods.setUrl:
            setUrl(arguments, result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    // MARK: -
    // MARK: - InitApp
    private func initApp(_ arguments: [String: Any], _ result: FlutterResult) {
        guard
            let applicationId: String = arguments[Args.applicationId].flatMap(cast),
            let apiKey: String = arguments[Args.apiKey].flatMap(cast)
        else {
            result(FlutterError.noRequiredArguments)
            
            return
        }
        
        backendless.initApp(applicationId: applicationId, apiKey: apiKey)
        result(nil)
    }
    
    // MARK: -
    // MARK: - Get ApiKey
    private func getApiKey(_ arguments: [String: Any], _ result: FlutterResult) {
        let apiKey = backendless.getApiKey()
        result(apiKey)
    }
    
    // MARK: -
    // MARK: - Get Application Id
    private func getApplicationId(_ arguments: [String: Any], _ result: FlutterResult) {
        let id = backendless.getApplictionId()
        result(id)
    }
    
    // MARK: -
    // MARK: - Get Notification Id Generator Init Value
    private func getNotificationIdGeneratorInitValue(_ arguments: [String: Any], _ result: FlutterResult) {
        
        // TODO: -
        // TODO: - No such method in iOS SDK
        
        result(FlutterMethodNotImplemented)
    }
    
    // MARK: -
    // MARK: - Get Push Templates As Json
    private func getPushTemplatesAsJson(_ arguments: [String: Any], _ result: FlutterResult) {
        
        // TODO: -
        // TODO: - No such method in iOS SDK
        
        result(FlutterMethodNotImplemented)
    }
    
    // MARK: -
    // MARK: - Get URL
    private func getUrl(_ arguments: [String: Any], _ result: FlutterResult) {
        let url = backendless.hostUrl
        result(url)
    }
    
    // MARK: -
    // MARK: - Is Initialized
    private func isInitialized(_ arguments: [String: Any], _ result: FlutterResult) {
        let appId = backendless.getApplictionId()
        let apiKey = backendless.getApiKey()
        let isInitialized = appId != "AppId" && apiKey != "APIKey"
        
        result(isInitialized)
    }
    
    // MARK: -
    // MARK: - Save Notification Id Generator State
    private func saveNotificationIdGeneratorState(_ arguments: [String: Any], _ result: FlutterResult) {
        
        // TODO: -
        // TODO: - No such method in iOS SDK
        
        result(FlutterMethodNotImplemented)
    }
    
    // MARK: -
    // MARK: - Save Push Templates
    private func savePushTemplates(_ arguments: [String: Any], _ result: FlutterResult) {
        
        // TODO: -
        // TODO: - No such method in iOS SDK
        
        result(FlutterMethodNotImplemented)
    }
    
    // MARK: -
    // MARK: - Set UI State
    private func setUIState(_ arguments: [String: Any], _ result: FlutterResult) {
        
        // TODO: -
        // TODO: - No such method in iOS SDK
        
        result(FlutterMethodNotImplemented)
    }
    
    // MARK: -
    // MARK: - Set URL
    private func setUrl(_ arguments: [String: Any], _ result: FlutterResult) {
        guard let url: String = arguments[Args.url].flatMap(cast) else {
            result(FlutterError.noRequiredArguments)
            
            return
        }
        
        backendless.hostUrl = url
        result(nil)
    }
}
