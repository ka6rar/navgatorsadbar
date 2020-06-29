import 'package:flutter/material.dart';
import 'class/navgatondrawr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Navigator Drawer'),
          // backgroundColor: dra,
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            Container(color: Colors.redAccent , 
            ),
              NavigatorDrawer(),

           
          ],
        ),
      );
  } 
}
