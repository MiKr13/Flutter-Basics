import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(children: <Widget>[
              Image.asset(imageUrl),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(title),
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('REMOVE'),
              onPressed: () => Navigator.pop(context, true),
            ),
          ),
        ],
      ),
    );
  }
}
