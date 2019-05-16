import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text('Shopping List'), backgroundColor: Colors.blue),
          body: Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assests/image_riviera_broccoli.jpg'),
                  Text('Broccoli')
                ],
              )
          )
      ),
    );
  }
}
