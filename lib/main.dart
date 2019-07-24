import 'package:flutter/material.dart';
import 'screen/page1.dart';
import 'screen/page2.dart';
import 'screen/page3.dart';

void main() => runApp(MyApp());
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
                      Page1(),
                      cuerpo2(),
                      cuerpo3(),
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

