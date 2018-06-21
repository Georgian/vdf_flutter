import 'dart:async';
import 'dart:io';
import 'package:varfdeforma/vdf_entities.dart';

class Repository {

  static List<VDFEvent> allEvents() {

    List dummyEvents = new List();

    dummyEvents.add(new VDFEvent(
        name: "Vidraru Bike Challenge",
        date: "24 Iunie 2018",
        description:
        "Ia-ți bicicleta și vino la a 5-a ediție Vidraru Bike Challenge, pe 24 iunie 2018." +
            "Vidraru Bike Challenge este un concurs de mountain bike, adresat atât pasionaților de sporturi și activități outdoor, cât și cicliștilor de performanță - etapă a Cupei Naționale a României de XCM, organizată de Federația Română de Ciclism" +
            "Alege unul dintre cele 3 trasee spectaculoase, cu plecare din zona barajului Vidraru:" +
            "- Hobby - 34 km" +
            "- Mediu - 52 km" +
            "- Maraton - 90 km"
    ));

    dummyEvents.add(new VDFEvent(
        name: "Sport4you Race MTB",
        date: "30 Iunie 2018",
        description: ""
    ));

    dummyEvents.add(new VDFEvent(
        name: "4munti",
        date: "5-8 Iulie 2018",
        description: ""
    ));

    return dummyEvents;
  }

}