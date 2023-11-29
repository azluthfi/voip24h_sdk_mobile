import 'package:json_annotation/json_annotation.dart';

enum TransportType {
  @JsonValue(1)
  Tcp,
  @JsonValue(0)
  Udp,
  @JsonValue(2)
  Tls
}