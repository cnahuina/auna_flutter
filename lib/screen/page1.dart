import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


final List<String> imgList = [
  'https://www.iperu.org/wp-content/uploads/2018/10/clinica-delgado.jpg',
  'https://www.iperu.org/wp-content/uploads/2018/11/clinica-bellavista-auna.jpg',
  'https://www.iperu.org/wp-content/uploads/2018/10/clinica-delgado.jpg'

];

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

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
