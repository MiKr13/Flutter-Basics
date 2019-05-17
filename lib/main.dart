import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_basics/product_manager.dart';

main() => runApp(MyApp()); //for one line functions, can use =>

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text('Shopping List'),
              backgroundColor: Colors.blue[300],
          ),
          body: ProductManager(),
      )
    );
  }
}
