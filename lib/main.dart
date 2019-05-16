import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
              title: Text('Shopping List'),
              backgroundColor: Colors.blue[300],
          ),
          body: Column (
            children: [
              Container(
                child: RaisedButton(
                  onPressed: () { },
                  elevation: 5,
                  highlightElevation: 0,
                  color: Colors.blue[200],
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: "Check "),
                        TextSpan(
                          text: "offers",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            color: Colors.lime
                          ),
                        ),
                      ],
                    ),
                  ),
                  animationDuration: Duration(milliseconds: 400),
                ),
                margin: EdgeInsets.symmetric(vertical: 5)
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assests/image_riviera_broccoli.jpg'),
                    Text('Broccoli')
                  ],
                ),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                elevation: 5,
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assests/image_riviera_broccoli.jpg'),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "Another",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black
                            ),
                          ),
                          TextSpan(
                            text: " oNE",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                              color: Colors.lime
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                elevation: 5,
              )
            ]
          ),
      )
    );
  }
}
