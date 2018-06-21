import 'package:json_object/json_object.dart';

class VDFEvent {
  String name,
      description,
      date,
      timeSchedule,
      price,
      locationName,
      locationCoordinates,
      registrationLink,
      technicalGuideLink,
      photoLink,
      trackLinks
  ;

  VDFEvent({this.name, this.date, this.description});
}

class VDFEventImpl extends JsonObject implements VDFEvent {
  VDFEventImpl();

  factory VDFEventImpl.fromJsonString(string) {
    return new JsonObject.fromJsonString(string, new VDFEventImpl());
  }
}