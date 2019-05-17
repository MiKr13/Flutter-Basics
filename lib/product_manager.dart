import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  // ProductManager(this.startingProduct); // constructor
  ProductManager({this.startingProduct}); // different way of passing data with names key anc value

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
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: "Add "),
                    TextSpan(
                      text: "NEW!",
                      style: Theme.of(context).textTheme.title,
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
