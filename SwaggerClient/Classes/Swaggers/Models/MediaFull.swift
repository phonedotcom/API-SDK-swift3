//
// MediaFull.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Full Recording Object and the Summary Recording Object are the same. */
open class MediaFull: JSONEncodable {

    /** Recording ID. Read-only. */
    public var id: Int32?
    /** Name of recording */
    public var name: String?
    /** Can be hold_music or greeting. Indicates the purpose of this recording and where it can be used. */
    public var type: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["type"] = self.type

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
