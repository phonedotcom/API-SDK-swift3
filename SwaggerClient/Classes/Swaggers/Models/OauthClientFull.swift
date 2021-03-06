//
// OauthClientFull.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** An OAuth Client Full Object is identical as a Summary Object. */
open class OauthClientFull: JSONEncodable {

    /** Client ID */
    public var id: Int32?
    /** Name of Client */
    public var clientName: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["client_name"] = self.clientName

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
