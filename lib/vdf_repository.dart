import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

const DB_URL = 'https://varfdeforma.firebaseio.com/';

class VDFEvent {
  final String name;
  final String date;
  final String description;
  const VDFEvent({this.name, this.date, this.description});

  VDFEvent.fromJson(Map<dynamic, dynamic> json)
      : name = json['name'].toString(),
        date = json['date'].toString(),
        description = json['description'].toString();

//  VDFEvent.fromSnapshot(DataSnapshot snapshot)
//      : name = snapshot.value['name'],
//        date = snapshot.value['date'],
//        description = snapshot.value['descripton'];
}

class Repository {

  static Future<List<VDFEvent>> allEvents() {

    var ref = FirebaseDatabase.instance.reference().child('events');

    var completer = new Completer<List<VDFEvent>>();

    ref.once().then((snapshot) {

      List<VDFEvent> newEvents = new List();

      snapshot.value
          .where((ss) => ss != null)
          .forEach((ss) { newEvents.add(VDFEvent.fromJson(ss)); });

      completer.complete(newEvents);
    });

    return completer.future;
  }

}

const dummyevents = const <VDFEvent> [
  const VDFEvent(
      name: "Vidraru Bike Challenge",
      date: "24 Iunie 2018",
      description:
      "Ia-ți bicicleta și vino la a 5-a ediție Vidraru Bike Challenge, pe 24 iunie 2018." +
          "Vidraru Bike Challenge este un concurs de mountain bike, adresat atât pasionaților de sporturi și activități outdoor, cât și cicliștilor de performanță - etapă a Cupei Naționale a României de XCM, organizată de Federația Română de Ciclism" +
          "Alege unul dintre cele 3 trasee spectaculoase, cu plecare din zona barajului Vidraru:" +
          "- Hobby - 34 km" +
          "- Mediu - 52 km" +
          "- Maraton - 90 km"
  ),
  const VDFEvent(
      name: "Sport4you Race MTB",
      date: "30 Iunie 2018",
      description: ""
  ),
  const VDFEvent(
      name: "4munti",
      date: "5-8 Iulie 2018",
      description: ""
  ),
];