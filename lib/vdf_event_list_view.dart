import 'dart:async';

import 'package:flutter/material.dart';
import 'package:varfdeforma/vdf_repository.dart';
import 'package:varfdeforma/vdf_event_details_page.dart';
import 'package:varfdeforma/vdf_entities.dart';

class BiklaListViewItem extends StatelessWidget {

  final VDFEvent _event;

  BiklaListViewItem(this._event);

  @override
  Widget build(BuildContext context) {
    return new ExpansionTile(
      title: new Text(this._event.name),
      // subtitle: new Text(this._event.date)
      children: [new BiklaListViewItemDetails(this._event)],
    );
  }

}


class BiklaListViewItemDetails extends StatelessWidget {

  final VDFEvent _event;

  BiklaListViewItemDetails(this._event);

  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new Container(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
          child: new Text(
            _event.date,
            style: new TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        new Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            child: new Text(
              _event.description,
              style: new TextStyle(
                color: Colors.grey[500],
              ),
            )
        ),
        new Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            child: new InkWell(
                child: new Text(
                    "Vezi toate detaliile",
                    style: new TextStyle(
                      color: Colors.blue[500],
                      fontWeight: FontWeight.bold,
                    )
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new BiklaEventDetails()),
                  );
                }
            )
        ),
      ],
    );
  }

}

class BiklaListView extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _BiklaListViewState();

}


class _BiklaListViewState extends State<BiklaListView> {

  final List<VDFEvent> _events = new List<VDFEvent>();

  Future<Null> _onRefresh() async {

    _events.clear();
    _events.addAll(Repository.allEvents());
  }

  @override
  Widget build(BuildContext context) {
    return new RefreshIndicator(
        child: new ListView(
          padding: new EdgeInsets.symmetric(vertical: 8.0),
          children: _buildEventList(),
        ),
        onRefresh: _onRefresh
    );
  }

  List<BiklaListViewItem> _buildEventList() {
    return _events.map((contact) => new BiklaListViewItem(contact))
        .toList();
  }

}

