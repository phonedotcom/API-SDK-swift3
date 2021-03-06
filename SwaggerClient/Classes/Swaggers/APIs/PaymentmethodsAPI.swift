//
// PaymentmethodsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class PaymentmethodsAPI: APIBase {
    /**
     Create an individual payment method.
     
     - parameter accountId: (path) Account ID 
     - parameter data: (body) Payment data 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createAccountPaymentMethod(accountId: Int32, data: CreatePaymentParams, completion: @escaping ((_ data: PaymentFull?,_ error: Error?) -> Void)) {
        createAccountPaymentMethodWithRequestBuilder(accountId: accountId, data: data).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Create an individual payment method.
     - POST /accounts/{account_id}/payment-methods
     - Create an individual payment method. See Account Payment Methods for more info on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "created_at" : 1,
  "cc_token" : "aeiou",
  "type" : "aeiou",
  "next_charge_date" : 5,
  "cc_exp" : "aeiou",
  "updated_at" : 2,
  "contact" : {
    "address" : {
      "line_1" : "aeiou",
      "line_2" : "aeiou",
      "country" : "aeiou",
      "province" : "aeiou",
      "city" : "aeiou",
      "postal_code" : "aeiou"
    },
    "phone" : "aeiou",
    "name" : "aeiou",
    "primary_email" : "aeiou",
    "company" : "aeiou",
    "fax" : "aeiou",
    "alternate_email" : "aeiou"
  },
  "nickname" : "aeiou",
  "id" : 0,
  "decline_count" : 5,
  "cc_number" : "aeiou",
  "voip_id" : 6,
  "status" : "aeiou"
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter data: (body) Payment data 

     - returns: RequestBuilder<PaymentFull> 
     */
    open class func createAccountPaymentMethodWithRequestBuilder(accountId: Int32, data: CreatePaymentParams) -> RequestBuilder<PaymentFull> {
        var path = "/accounts/{account_id}/payment-methods"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = data.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PaymentFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete an individual payment method.
     
     - parameter accountId: (path) Account ID 
     - parameter pmId: (path) Payment Method ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAccountPaymentMethod(accountId: Int32, pmId: Int32, completion: @escaping ((_ data: DeleteEntry?,_ error: Error?) -> Void)) {
        deleteAccountPaymentMethodWithRequestBuilder(accountId: accountId, pmId: pmId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Delete an individual payment method.
     - DELETE /accounts/{account_id}/payment-methods/{pm_id}
     - Delete an individual payment method. See Account Payment Methods for more info on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "success" : true
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter pmId: (path) Payment Method ID 

     - returns: RequestBuilder<DeleteEntry> 
     */
    open class func deleteAccountPaymentMethodWithRequestBuilder(accountId: Int32, pmId: Int32) -> RequestBuilder<DeleteEntry> {
        var path = "/accounts/{account_id}/payment-methods/{pm_id}"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{pm_id}", with: "\(pmId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DeleteEntry>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Show details of an individual payment method.
     
     - parameter accountId: (path) Account ID 
     - parameter pmId: (path) Payment Method ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccountPaymentMethod(accountId: Int32, pmId: Int32, completion: @escaping ((_ data: PaymentFull?,_ error: Error?) -> Void)) {
        getAccountPaymentMethodWithRequestBuilder(accountId: accountId, pmId: pmId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Show details of an individual payment method.
     - GET /accounts/{account_id}/payment-methods/{pm_id}
     - Show details of an individual payment method. See Account Payment Methods for more info on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "created_at" : 1,
  "cc_token" : "aeiou",
  "type" : "aeiou",
  "next_charge_date" : 5,
  "cc_exp" : "aeiou",
  "updated_at" : 2,
  "contact" : {
    "address" : {
      "line_1" : "aeiou",
      "line_2" : "aeiou",
      "country" : "aeiou",
      "province" : "aeiou",
      "city" : "aeiou",
      "postal_code" : "aeiou"
    },
    "phone" : "aeiou",
    "name" : "aeiou",
    "primary_email" : "aeiou",
    "company" : "aeiou",
    "fax" : "aeiou",
    "alternate_email" : "aeiou"
  },
  "nickname" : "aeiou",
  "id" : 0,
  "decline_count" : 5,
  "cc_number" : "aeiou",
  "voip_id" : 6,
  "status" : "aeiou"
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter pmId: (path) Payment Method ID 

     - returns: RequestBuilder<PaymentFull> 
     */
    open class func getAccountPaymentMethodWithRequestBuilder(accountId: Int32, pmId: Int32) -> RequestBuilder<PaymentFull> {
        var path = "/accounts/{account_id}/payment-methods/{pm_id}"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{pm_id}", with: "\(pmId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PaymentFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of payment methods for an account.
     
     - parameter accountId: (path) Account ID 
     - parameter filtersId: (query) ID filter (optional)
     - parameter sortId: (query) ID sorting (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listAccountPaymentMethods(accountId: Int32, filtersId: [String]? = nil, sortId: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil, completion: @escaping ((_ data: ListPaymentMethods?,_ error: Error?) -> Void)) {
        listAccountPaymentMethodsWithRequestBuilder(accountId: accountId, filtersId: filtersId, sortId: sortId, limit: limit, offset: offset, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of payment methods for an account.
     - GET /accounts/{account_id}/payment-methods
     - Get a list of payment methods for an account. See Account Payment Methods for more info on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "total" : 0,
  "offset" : 6,
  "limit" : 1,
  "filters" : {
    "id" : "aeiou"
  },
  "sort" : {
    "id" : "aeiou"
  },
  "items" : [ {
    "created_at" : 2,
    "cc_token" : "aeiou",
    "type" : "aeiou",
    "next_charge_date" : 9,
    "cc_exp" : "aeiou",
    "updated_at" : 3,
    "contact" : {
      "address" : {
        "line_1" : "aeiou",
        "line_2" : "aeiou",
        "country" : "aeiou",
        "province" : "aeiou",
        "city" : "aeiou",
        "postal_code" : "aeiou"
      },
      "phone" : "aeiou",
      "name" : "aeiou",
      "primary_email" : "aeiou",
      "company" : "aeiou",
      "fax" : "aeiou",
      "alternate_email" : "aeiou"
    },
    "nickname" : "aeiou",
    "id" : 5,
    "decline_count" : 7,
    "cc_number" : "aeiou",
    "voip_id" : 5,
    "status" : "aeiou"
  } ]
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter filtersId: (query) ID filter (optional)
     - parameter sortId: (query) ID sorting (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)

     - returns: RequestBuilder<ListPaymentMethods> 
     */
    open class func listAccountPaymentMethodsWithRequestBuilder(accountId: Int32, filtersId: [String]? = nil, sortId: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil) -> RequestBuilder<ListPaymentMethods> {
        var path = "/accounts/{account_id}/payment-methods"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "filters[id]": filtersId, 
            "sort[id]": sortId, 
            "limit": limit?.encodeToJSON(), 
            "offset": offset?.encodeToJSON(), 
            "fields": fields
        ])
        

        let requestBuilder: RequestBuilder<ListPaymentMethods>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Replace the status of an individual payment method.
     
     - parameter accountId: (path) Account ID 
     - parameter pmId: (path) Payment Method ID 
     - parameter data: (body) Payment data (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func patchAccountPaymentMethod(accountId: Int32, pmId: Int32, data: PatchPaymentParams? = nil, completion: @escaping ((_ data: PaymentFull?,_ error: Error?) -> Void)) {
        patchAccountPaymentMethodWithRequestBuilder(accountId: accountId, pmId: pmId, data: data).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Replace the status of an individual payment method.
     - PATCH /accounts/{account_id}/payment-methods/{pm_id}
     - Replace the status of an individual payment method. See Account Payment Methods for more info on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "created_at" : 1,
  "cc_token" : "aeiou",
  "type" : "aeiou",
  "next_charge_date" : 5,
  "cc_exp" : "aeiou",
  "updated_at" : 2,
  "contact" : {
    "address" : {
      "line_1" : "aeiou",
      "line_2" : "aeiou",
      "country" : "aeiou",
      "province" : "aeiou",
      "city" : "aeiou",
      "postal_code" : "aeiou"
    },
    "phone" : "aeiou",
    "name" : "aeiou",
    "primary_email" : "aeiou",
    "company" : "aeiou",
    "fax" : "aeiou",
    "alternate_email" : "aeiou"
  },
  "nickname" : "aeiou",
  "id" : 0,
  "decline_count" : 5,
  "cc_number" : "aeiou",
  "voip_id" : 6,
  "status" : "aeiou"
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter pmId: (path) Payment Method ID 
     - parameter data: (body) Payment data (optional)

     - returns: RequestBuilder<PaymentFull> 
     */
    open class func patchAccountPaymentMethodWithRequestBuilder(accountId: Int32, pmId: Int32, data: PatchPaymentParams? = nil) -> RequestBuilder<PaymentFull> {
        var path = "/accounts/{account_id}/payment-methods/{pm_id}"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{pm_id}", with: "\(pmId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = data?.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PaymentFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
