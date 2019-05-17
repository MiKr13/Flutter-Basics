import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  // _ makes it private to not be used by other files
  List<String> _products = ['Broccoli'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  _products.add('Advanced Broccoli');
                });
              },
              elevation: 5,
              highlightElevation: 0,
              color: Colors.blue[200],
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: "Add "),
                    TextSpan(
                      text: "NEW!",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                          color: Colors.lime),
                    ),
                  ],
                ),
              ),
              animationDuration: Duration(milliseconds: 400),
            ),
            margin: EdgeInsets.symmetric(vertical: 5)),
        Products(_products)
      ],
    );
  }
}
