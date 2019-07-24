import 'package:flutter/material.dart';
import 'package:auna_app/screen/content.dart';

class Cuerpo2 extends StatefulWidget {
  @override
  _Cuerpo2State createState() => _Cuerpo2State();
}

class _Cuerpo2State extends State<Cuerpo2> {
  @override
  Widget build(BuildContext context) {


  return ListView(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: (){
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => Content(),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.add_location),
                        title: Text("Clínica Delgado"),
                      ),
                      ListTile(
                        leading: Icon(Icons.assignment_ind),
                        title: Text("Lista 001"),
                      )

                    ],
                  ),
                ),
              ),
            )
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  width: 300,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.add_location),
                        title: Text("Clínica Delgado"),
                      ),
                      ListTile(
                        leading: Icon(Icons.assignment_ind),
                        title: Text("Lista 001"),
                      )

                    ],
                  ),
                ),
              ),
            )
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  width: 300,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.add_location),
                        title: Text("Clínica Delgado"),
                      ),
                      ListTile(
                        leading: Icon(Icons.assignment_ind),
                        title: Text("Lista 001"),
                      )

                    ],
                  ),
                ),
              ),
            )
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  width: 300,
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.add_location),
                        title: Text("Clínica Delgado"),
                      ),
                      ListTile(
                        leading: Icon(Icons.assignment_ind),
                        title: Text("Lista 001"),
                      )

                    ],
                  ),
                ),
              ),
            )
        ),
      ),
    ],
  );
  }
} 