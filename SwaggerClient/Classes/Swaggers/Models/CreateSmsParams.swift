//
// CreateSmsParams.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CreateSmsParams: JSONEncodable {

    /** Phone number of sender */
    public var from: String?
    /** Outgoing destination numbers */
    public var to: String?
    /** Text body of the outgoing SMS message. Maximum 160 characters per message. */
    public var text: String?
    /** ID of Extension where the sms is saved */
    public var extensionId: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["from"] = self.from
        nillableDictionary["to"] = self.to
        nillableDictionary["text"] = self.text
        nillableDictionary["extension_id"] = self.extensionId?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
