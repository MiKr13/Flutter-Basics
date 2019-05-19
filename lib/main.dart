import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_basics/product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: 'Montserrat',

        textTheme: TextTheme(
          headline: TextStyle(fontFamily: 'Hind', fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.w300),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind', fontStyle: FontStyle.italic),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Shopping List'
          )
        ),
        // body: ProductManager('Broccoli'), // Passing data to statefull widget
        body: ProductManager(startingProduct: 'Broccoli',),
      )
    );
  }
}
