//
// ExtensionFull.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The Full Extension Object has the same properties as the Extension Summary Object, along with the following: */
open class ExtensionFull: JSONEncodable {

    /** ID of the extension. This is the internal Phone.com ID, not the extension number callers may dial. */
    public var id: Int32?
    /** User-supplied name for the extension. On POST, leaving this empty will result in an auto-generated value. On PUT, this field is required. */
    public var name: String?
    /** Extension number that callers may dial. On POST, leaving this empty will result in an auto-generated value. On PUT, this field is required. */
    public var _extension: Int32?
    /** API Account ID. Optional, object may return the voip_id. */
    public var voipId: Int32?
    /** Full name of the individual or department to which this extension is assigned */
    public var fullName: String?
    /** Can be \&quot;limited\&quot; or \&quot;unlimited\&quot;. In most cases, changing this will affect your monthly bill. Please see our Control Panel or contact Customer Service for pricing. */
    public var usageType: String?
    public var deviceMembership: DeviceMembership?
    /** Time zone. Can be in any commonly recognized format, such as \&quot;America/Los_Angeles\&quot;. */
    public var timezone: String?
    /** Greeting that communicates the extension&#39;s name. Output is a Greeting Summary Object. Input must be a Greeting Lookup Object. */
    public var nameGreeting: MediaSummary?
    /** Whether this extension should be included in the dial-by-name directory for this account. Boolean. */
    public var includeInDirectory: Bool?
    /** Phone number to use as Caller ID for outgoing calls. Must be a phone number belonging to this account, or one of any additional authorized phone numbers. You can use our List Caller Ids service to see a current list. To unassign, you may set this to \&quot;private\&quot;, NULL, or an empty string. */
    public var callerId: String?
    /** For outbound calls, this is the North American area code that this extension is calling from. */
    public var localAreaCode: String?
    /** Whether Call Waiting is enabled. Boolean. Default is TRUE. */
    public var enableCallWaiting: Bool?
    /** Whether outgoing calls are enabled. Boolean. Default is TRUE. */
    public var enableOutboundCalls: Bool?
    public var voicemail: Voicemail?
    public var callNotifications: Notification?
    /** Route which will handle incoming voice and fax calls. Only valid on PUT requests, not POST. Output is a Route Summary Object if the route is named, otherwise the Full Route Object will be shown. Input must be a Route Lookup Object pointing to a named route. Route must belong to this extension already. */
    public var route: RouteSummary?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["extension"] = self._extension?.encodeToJSON()
        nillableDictionary["voip_id"] = self.voipId?.encodeToJSON()
        nillableDictionary["full_name"] = self.fullName
        nillableDictionary["usage_type"] = self.usageType
        nillableDictionary["device_membership"] = self.deviceMembership?.encodeToJSON()
        nillableDictionary["timezone"] = self.timezone
        nillableDictionary["name_greeting"] = self.nameGreeting?.encodeToJSON()
        nillableDictionary["include_in_directory"] = self.includeInDirectory
        nillableDictionary["caller_id"] = self.callerId
        nillableDictionary["local_area_code"] = self.localAreaCode
        nillableDictionary["enable_call_waiting"] = self.enableCallWaiting
        nillableDictionary["enable_outbound_calls"] = self.enableOutboundCalls
        nillableDictionary["voicemail"] = self.voicemail?.encodeToJSON()
        nillableDictionary["call_notifications"] = self.callNotifications?.encodeToJSON()
        nillableDictionary["route"] = self.route?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
