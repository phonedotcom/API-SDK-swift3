//
// CreatePaymentParams.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CreatePaymentParams: JSONEncodable {

    /** Name of payment method */
    public var nickname: String?
    /** primary, onfile or hidden */
    public var status: String?
    /** Credit Card Type */
    public var type: String?
    /** Credit Card Token. Token is obtained by entering credit card info via the Credit Card Entry Form */
    public var ccToken: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["nickname"] = self.nickname
        nillableDictionary["status"] = self.status
        nillableDictionary["type"] = self.type
        nillableDictionary["cc_token"] = self.ccToken

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
