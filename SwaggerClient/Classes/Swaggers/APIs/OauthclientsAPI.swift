//
// OauthclientsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class OauthclientsAPI: APIBase {
    /**
     Delete an individual OAuth client.
     
     - parameter accountId: (path) Account ID 
     - parameter clientId: (path) Client ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAccountOauthClient(accountId: Int32, clientId: Int32, completion: @escaping ((_ data: DeleteEntry?,_ error: Error?) -> Void)) {
        deleteAccountOauthClientWithRequestBuilder(accountId: accountId, clientId: clientId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Delete an individual OAuth client.
     - DELETE /accounts/{account_id}/oauth/clients/{client_id}
     - Delete an individual OAuth client. See Account OAuth Clients for more info on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "success" : true
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter clientId: (path) Client ID 

     - returns: RequestBuilder<DeleteEntry> 
     */
    open class func deleteAccountOauthClientWithRequestBuilder(accountId: Int32, clientId: Int32) -> RequestBuilder<DeleteEntry> {
        var path = "/accounts/{account_id}/oauth/clients/{client_id}"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{client_id}", with: "\(clientId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DeleteEntry>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Show details of an individual OAuth client.
     
     - parameter accountId: (path) Account ID 
     - parameter clientId: (path) Client ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAccountOauthClient(accountId: Int32, clientId: Int32, completion: @escaping ((_ data: OauthClientFull?,_ error: Error?) -> Void)) {
        getAccountOauthClientWithRequestBuilder(accountId: accountId, clientId: clientId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Show details of an individual OAuth client.
     - GET /accounts/{account_id}/oauth/clients/{client_id}
     - Show details of an individual OAuth client. See Account OAuth Clients for more info on the properties.
     - API Key:
       - type: apiKey Authorization 
       - name: apiKey
     - examples: [{contentType=application/json, example={
  "id" : 0,
  "client_name" : "aeiou"
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter clientId: (path) Client ID 

     - returns: RequestBuilder<OauthClientFull> 
     */
    open class func getAccountOauthClientWithRequestBuilder(accountId: Int32, clientId: Int32) -> RequestBuilder<OauthClientFull> {
        var path = "/accounts/{account_id}/oauth/clients/{client_id}"
        path = path.replacingOccurrences(of: "{account_id}", with: "\(accountId)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{client_id}", with: "\(clientId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<OauthClientFull>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of OAuth clients for an account.
     
     - parameter accountId: (path) Account ID 
     - parameter filtersId: (query) ID filter (optional)
     - parameter sortId: (query) ID sorting (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func listAccountOauthClients(accountId: Int32, filtersId: [String]? = nil, sortId: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil, completion: @escaping ((_ data: ListOauthClients?,_ error: Error?) -> Void)) {
        listAccountOauthClientsWithRequestBuilder(accountId: accountId, filtersId: filtersId, sortId: sortId, limit: limit, offset: offset, fields: fields).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get a list of OAuth clients for an account.
     - GET /accounts/{account_id}/oauth/clients
     - Get a list of OAuth clients for an account. See Account OAuth Clients for more info on the properties.
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
    "id" : 5,
    "client_name" : "aeiou"
  } ]
}}]
     
     - parameter accountId: (path) Account ID 
     - parameter filtersId: (query) ID filter (optional)
     - parameter sortId: (query) ID sorting (optional)
     - parameter limit: (query) Max results (optional)
     - parameter offset: (query) Results to skip (optional)
     - parameter fields: (query) Field set (optional)

     - returns: RequestBuilder<ListOauthClients> 
     */
    open class func listAccountOauthClientsWithRequestBuilder(accountId: Int32, filtersId: [String]? = nil, sortId: String? = nil, limit: Int32? = nil, offset: Int32? = nil, fields: String? = nil) -> RequestBuilder<ListOauthClients> {
        var path = "/accounts/{account_id}/oauth/clients"
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
        

        let requestBuilder: RequestBuilder<ListOauthClients>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
