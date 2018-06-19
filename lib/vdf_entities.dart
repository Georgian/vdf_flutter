import 'package:json_object/json_object.dart';

class VDFEvent {
  String name,
      description,
      locationName,
      locationCoordinates,
      date,
      time;

}

class VDFEventImpl extends JsonObject implements VDFEvent {
  VDFEventImpl();

  factory VDFEventImpl.fromJsonString(string) {
    return new JsonObject.fromJsonString(string, new VDFEventImpl());
  }
}