import 'package:varfdeforma/vdf_event_map_view.dart';
import 'package:flutter/material.dart';
import 'package:varfdeforma/vdf_event_list_view.dart';
import 'package:varfdeforma/vdf_event_create_page.dart';
import 'package:varfdeforma/vdf_repository.dart';

class VDFHome extends StatefulWidget {
  VDFHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _VDFHomeState createState() => new _VDFHomeState();
}

class _VDFHomeState extends State<VDFHome> {

  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'Lista'),
    new Tab(text: 'Harta'),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: 2,
        child:
        new Scaffold(
          appBar: new AppBar(
            bottom: new TabBar(
              tabs: [
                new Tab(text: "Lista"),
                new Tab(text: "Harta"),
              ],
            ),
            title: new Text('VDF'),
          ),
          drawer: _buildDrawer(context),
          body: new TabBarView(
            children: [
              new BiklaListView(),
              new BiklaMapView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          const DrawerHeader(child: const Center(child: const Text('Meniu'))),
          const ListTile(
            // leading: const Icon(Icons.account_balance),
            title: const Text('Calendar'),
          ),
          const ListTile(
            // leading: const Icon(Icons.account_balance),
            title: const Text('Despre'),
          ),
          new ListTile(
              title: const Text('Add Event'),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new VDFEventCreatePage()),
                );
              }
          )
        ],
      ),
    );
  }

}

