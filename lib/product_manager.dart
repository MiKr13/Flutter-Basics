import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct); // constructor

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState(); // we can pass startingProduct using constructor but there's a better way
  }
}

class _ProductManagerState extends State<ProductManager> {
  // _ makes it private to not be used by other files
  List<String> _products = [];

  @override
  void initState() {
    // we can have used setstate too but there's no need to re-render a data coming from other file on file execution
    _products.add(widget.startingProduct); // we get the data without using constructor
    super.initState();
  }

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
