package voip24h.sdk.mobile.voip24h_sdk_mobile.model

import org.linphone.core.*

data class SipConfiguration(
    val extension: String,
    val domain: String,
    val password: String,
    var port: Int = 5060,
    var transportType: Int = TransportType.Udp.toInt(),
    var isKeepAlive: Boolean = false
) {
    fun toLpTransportType() : TransportType = TransportType.fromInt(transportType)
}