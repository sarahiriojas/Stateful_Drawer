  
import 'package:flutter/material.dart';

void main() => runApp(KatiaApp());

class KatiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: EsScaffold(title: "Flutter Katia Riojas"),
    ); // MaterialApp
  } //Widget
} //KatiaApp

class EsScaffold extends StatefulWidget {
  EsScaffold({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _EsScaffoldState createState() => _EsScaffoldState();
} //Clase EsScaffold

class _EsScaffoldState extends State<EsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/FlutterEnEspanol.jpg',
          width: 200.0,
        ),
      ), //Center
      drawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 100.0), //Logo
          Text('Drawer'),
        ] //Children
            ), //Chil de drawer1
      ), //Drawer1
      endDrawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(size: 100.0), //Logo
          Text('Fin Drawer'),
        ] //Children
            ), //Chil del enddrawer2
      ), //Endrawer
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_alert_rounded ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 300.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(size: 100.0), //Flutter logo
                    Text('Boton Hoja'),
                  ], //Children
                ), //Child column
              ); //Contenedor
            }, //Builder
          ); //Showmodal
        }, //Pressed
      ), //Boton Flotante
      bottomNavigationBar: BottomAppBar(
        color: Colors.cyan,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlutterLogo(
                size: 20.0,
              ),
              Text('bottomNavigationBar con BottomAppBar')
            ],
          ),
        ),
      ), //navigationbar
    ); //Scaffold
  } //Widget 
} //EsScaffold