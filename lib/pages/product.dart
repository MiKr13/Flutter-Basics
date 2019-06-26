import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print('Back button Pressed');
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
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
        )
    );
  }
}
