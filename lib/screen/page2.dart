import 'package:flutter/material.dart';

Widget cuerpo2(){

  return ListView(
    children: <Widget>[
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