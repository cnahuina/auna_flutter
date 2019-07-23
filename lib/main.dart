import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

final List<String> imgList = [
  'https://www.iperu.org/wp-content/uploads/2018/10/clinica-delgado.jpg',
  'https://www.iperu.org/wp-content/uploads/2018/11/clinica-bellavista-auna.jpg',
  'https://www.interseguro.com.pe/MundoBeneficios/File/Download/?id=9511'

];

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Auna"),
            bottom: const TabBar(
                isScrollable: true,
                tabs: [
                  Tab(icon: Icon(Icons.assignment),text: '1era Revisión'),
                  Tab(icon: Icon(Icons.assignment_turned_in),text: '2da Revisión'),
                  Tab(icon: Icon(Icons.assignment_late),text: '3er Revisión'),
              ])
          ),
          body: SafeArea(
              bottom: false,
              child: TabBarView(
                  children: [
                      Cuerpo11(),
                      Cuerpo2(),
                      Cuerpo3(),
                ]
                )
          ),

          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                    accountName: Text("Carlos harold"),
                    accountEmail: Text("cnahuina@gmail.com"),
                    currentAccountPicture: ClipOval(
                      child: Image.network("http://pm1.narvii.com/6497/bd3631a78d49b157c247eafad8e61851d2fc18a3_00.jpg"),
        )
                ),
                ListTile(
                  leading: Icon(Icons.business),
                  title: Text("Clínicas"),
                ),
                ListTile(
                  leading: Icon(Icons.question_answer),
                  title: Text("Consultas"),
                ),
                ListTile(
                  leading: Icon(Icons.message),
                  title: Text("Contácto"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class Cuerpo11 extends StatefulWidget {
  @override
  _Cuerpo11State createState() => _Cuerpo11State();
}

class _Cuerpo11State extends State<Cuerpo11> {

  int _current = 0;
  @override

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                height: 150.0,
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                        ),
                        child: Image.network(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),

            Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(imgList, (index, url) {
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4)
                      ),
                    );
                  }),
                ))
          ],
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



Widget Cuerpo2(){

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

Widget Cuerpo3(){

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
