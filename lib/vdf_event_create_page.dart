import 'package:flutter/material.dart';
import 'package:varfdeforma/vdf_entities.dart';

class VDFEventCreatePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _VDFEventCreatePageState();

}

class _VDFEventCreatePageState extends State<VDFEventCreatePage> {

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  final VDFEvent _newEvent = new VDFEvent();

  void _submit() {
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save();
    }
  }

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Create event'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Form(
            key: this._formKey,
            child: new ListView(
              children: <Widget>[
                new TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(
                        hintText: 'ex. Vidraru Bike Challenge',
                        labelText: 'Titlu'
                    ),
                    onSaved: (String value) {
                      this._newEvent.name = value;
                    }
                ),
                new TextFormField(
                    keyboardType: TextInputType.datetime,
                    decoration: new InputDecoration(
                        hintText: 'ex. 24/06/2018',
                        labelText: 'Data'
                    ),
                    onSaved: (String value) {
                      this._newEvent.date = value;
                    }
                ),
                new TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(
                        hintText: 'ex. 9:30 - 15:00',
                        labelText: 'Program'
                    ),
                    onSaved: (String value) {
                      this._newEvent.timeSchedule = value;
                    }
                ),
                new TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(
                        hintText: 'ex. 90 LEI',
                        labelText: 'Pret'
                    ),
                    onSaved: (String value) {
                      this._newEvent.price = value;
                    }
                ),
                new TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(
                        hintText: 'ex. Arefu',
                        labelText: 'Locatia'
                    ),
                    onSaved: (String value) {
                      this._newEvent.locationName = value;
                    }
                ),
                new TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: new InputDecoration(
                        hintText: 'ex. 45.4744, 24.6258',
                        labelText: 'Coordonate'
                    ),
                    onSaved: (String value) {
                      this._newEvent.locationCoordinates = value;
                    }
                ),
                new TextFormField(
                    keyboardType: TextInputType.text,
                    maxLines: 20,
                    decoration: new InputDecoration(
                        hintText: 'Prezentare generala',
                        labelText: 'Descriere'
                    ),
                    onSaved: (String value) {
                      this._newEvent.description = value;
                    }
                ),
                new TextFormField(
                    keyboardType: TextInputType.url,
                    decoration: new InputDecoration(
                        labelText: 'Link catre inregistrare'
                    ),
                    onSaved: (String value) {
                      this._newEvent.registrationLink = value;
                    }
                ),
                new TextFormField(
                    keyboardType: TextInputType.url,
                    decoration: new InputDecoration(
                        labelText: 'Link catre ghid tehnic'
                    ),
                    onSaved: (String value) {
                      this._newEvent.technicalGuideLink = value;
                    }
                ),
                new TextFormField(
                    keyboardType: TextInputType.url,
                    decoration: new InputDecoration(
                        labelText: 'Link catre fotografie'
                    ),
                    onSaved: (String value) {
                      this._newEvent.photoLink = value;
                    }
                ),
                new TextFormField(
                    keyboardType: TextInputType.url,
                    maxLines: 5,
                    decoration: new InputDecoration(
                        labelText: 'Link-uri catre trasee'
                    ),
                    onSaved: (String value) {
                      this._newEvent.trackLinks = value;
                    }
                ),
                new Container(
                  width: screenSize.width,
                  child: new RaisedButton(
                    child: new Text(
                      'Adauga',
                      style: new TextStyle(
                          color: Colors.white
                      ),
                    ),
                    onPressed: () => _submit,
                    color: Colors.blue,
                  ),
                  margin: new EdgeInsets.only(
                      top: 20.0
                  ),
                )
              ],
            ),
          )
      ),
    );
  }

}