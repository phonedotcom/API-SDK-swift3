//
// SmsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class SmsAPI: APIBase {
    /**
     Send a SMS to one or a group of recipients.
     
     - parameter accountId: (path) Account ID 
     - parameter data: (body) SMS data 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createAccountSms(accountId: Int32, data: CreateSmsParams, completion: @escaping ((_ data: SmsFull?,_ error: Error?) -> Void)) {
        createAccountSmsWithRequestBuilder(accountId: accountId, data: data).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Send a SMS to one or a group of recipients.
     - POST /accounts/{account_id}/sms
     - Send a SMS to one or a group of recipients. For details on the input fields, see Intro to SMS. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Create SMS API with the following definition: POST https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/sms
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "is_new" : true,
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "from" : "aeiou",
  "id" : "aeiou",
  "to" : [ {
    "number" : "aeiou",
    "status" : "aeiou"
  } ],
  "text" : "aeiou",
  "direction" : "aeiou",
  "created_epoch" : 0
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter data: (body) SMS data 

     - returns: RequestBuilder<SmsFull> 
     */
    open class func createAccountSmsWithRequestBuilder(accountId: Int32, data: CreateSmsParams) -> RequestBuilder<SmsFull> {
        var path = "/accounts/{account_id}/sms"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = data.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SmsFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     This service shows the details of an individual SMS.
     
     - parameter accountId: (path) Account ID 
     - parameter smsId: (path) SMS ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccountSms(accountId: Int32, smsId: String, completion: @escaping ((_ data: SmsFull?,_ error: Error?) -> Void)) {
        getAccountSmsWithRequestBuilder(accountId: accountId, smsId: smsId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     This service shows the details of an individual SMS.
     - GET /accounts/{account_id}/sms/{sms_id}
     - This service shows the details of an individual SMS. See Intro to SMS for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Get SMS API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/sms/:sms_id
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "is_new" : true,
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "from" : "aeiou",
  "id" : "aeiou",
  "to" : [ {
    "number" : "aeiou",
    "status" : "aeiou"
  } ],
  "text" : "aeiou",
  "direction" : "aeiou",
  "created_epoch" : 0
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter smsId: (path) SMS ID 

     - returns: RequestBuilder<SmsFull> 
     */
    open class func getAccountSmsWithRequestBuilder(accountId: Int32, smsId: String) -> RequestBuilder<SmsFull> {
        var path = "/accounts/{account_id}/sms/{sms_id}"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{sms_id}", with: "\(smsId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SmsFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of SMS messages for an account.
     
     - parameter accountId: (path) Account ID 
     - parameter filtersId: (query) ID filter (optional)
     - parameter filtersFrom: (query) Caller ID filter (optional)
     - parameter filtersTo: (query) Callee ID filter, the E.164 phone number to send the SMS TO. Note you must encode the + as %2B (optional)
     - parameter filtersDirection: (query) Direction filter (optional)
     - parameter filtersExtension: (query) Extension filter (optional)
     - parameter filtersCreatedAt: (query) Date string representing the UTC time that sms was created (optional)
     - parameter sortId: (query) ID sorting (optional)
     - parameter sortCreatedAt: (query) Sort by created time of message (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listAccountSms(accountId: Int32, filtersId: [String]? = nil, filtersFrom: String? = nil, filtersTo: String? = nil, filtersDirection: String? = nil, filtersExtension: [String]? = nil, filtersCreatedAt: String? = nil, sortId: String? = nil, sortCreatedAt: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil, completion: @escaping ((_ data: ListSms?,_ error: Error?) -> Void)) {
        listAccountSmsWithRequestBuilder(accountId: accountId, filtersId: filtersId, filtersFrom: filtersFrom, filtersTo: filtersTo, filtersDirection: filtersDirection, filtersExtension: filtersExtension, filtersCreatedAt: filtersCreatedAt, sortId: sortId, sortCreatedAt: sortCreatedAt, limit: limit, offset: offset, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of SMS messages for an account.
     - GET /accounts/{account_id}/sms
     - Get a list of SMS messages for an account. See Intro to SMS for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level List SMS API with the following definition: GET https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/sms
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "total" : 0,
  "offset" : 6,
  "limit" : 1,
  "filters" : {
    "from" : "aeiou",
    "id" : "aeiou",
    "direction" : "aeiou"
  },
  "sort" : {
    "created_at" : "aeiou",
    "id" : "aeiou"
  },
  "items" : [ {
    "is_new" : true,
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "from" : "aeiou",
    "id" : "aeiou",
    "to" : [ {
      "number" : "aeiou",
      "status" : "aeiou"
    } ],
    "text" : "aeiou",
    "direction" : "aeiou",
    "created_epoch" : 5
  } ]
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter filtersId: (query) ID filter (optional)
     - parameter filtersFrom: (query) Caller ID filter (optional)
     - parameter filtersTo: (query) Callee ID filter, the E.164 phone number to send the SMS TO. Note you must encode the + as %2B (optional)
     - parameter filtersDirection: (query) Direction filter (optional)
     - parameter filtersExtension: (query) Extension filter (optional)
     - parameter filtersCreatedAt: (query) Date string representing the UTC time that sms was created (optional)
     - parameter sortId: (query) ID sorting (optional)
     - parameter sortCreatedAt: (query) Sort by created time of message (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)

     - returns: RequestBuilder<ListSms> 
     */
    open class func listAccountSmsWithRequestBuilder(accountId: Int32, filtersId: [String]? = nil, filtersFrom: String? = nil, filtersTo: String? = nil, filtersDirection: String? = nil, filtersExtension: [String]? = nil, filtersCreatedAt: String? = nil, sortId: String? = nil, sortCreatedAt: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil) -> RequestBuilder<ListSms> {
        var path = "/accounts/{account_id}/sms"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filters[id]": filtersId, 
            "filters[from]": filtersFrom, 
            "filters[to]": filtersTo, 
            "filters[direction]": filtersDirection, 
            "filters[extension]": filtersExtension, 
            "filters[created_at]": filtersCreatedAt, 
            "sort[id]": sortId, 
            "sort[created_at]": sortCreatedAt, 
            "limit": limit?.encodeToJSON(), 
            "offset": offset?.encodeToJSON(), 
            "fields": fields
        ])
        

        let requestBuilder: RequestBuilder<ListSms>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update the is_new parameter in a sms record.
     
     - parameter accountId: (path) Account ID 
     - parameter smsId: (path) SMS ID 
     - parameter data: (body) Sms data (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func patchAccountSms(accountId: Int32, smsId: String, data: PatchSmsParams? = nil, completion: @escaping ((_ data: SmsFull?,_ error: Error?) -> Void)) {
        patchAccountSmsWithRequestBuilder(accountId: accountId, smsId: smsId, data: data).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Update the is_new parameter in a sms record.
     - PATCH /accounts/{account_id}/sms/{sms_id}
     - Update the is_new parameter in a sms record. See Account SMS for more info on the properties. Note: This API is for users with Account Owner scope access token. Users with Extension User scope token should invoke the Extension level Patch SMS API with the following definition: PATCH https://api.phone.com/v4/accounts/:account_id/extensions/:extension_id/sms/:sms_id
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "is_new" : true,
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "from" : "aeiou",
  "id" : "aeiou",
  "to" : [ {
    "number" : "aeiou",
    "status" : "aeiou"
  } ],
  "text" : "aeiou",
  "direction" : "aeiou",
  "created_epoch" : 0
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter smsId: (path) SMS ID 
     - parameter data: (body) Sms data (optional)

     - returns: RequestBuilder<SmsFull> 
     */
    open class func patchAccountSmsWithRequestBuilder(accountId: Int32, smsId: String, data: PatchSmsParams? = nil) -> RequestBuilder<SmsFull> {
        var path = "/accounts/{account_id}/sms/{sms_id}"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{sms_id}", with: "\(smsId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = data?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SmsFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
