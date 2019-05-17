import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

main() => runApp(MyApp()); //for one line functions, can use =>

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<MyApp> {
  // _ makes it private to not be used by other files
  List<String> _products = ['Broccoli', 'One more'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    	home: Scaffold(
      	appBar: AppBar(
    		title: Text('Shopping List'),
        	backgroundColor: Colors.blue[300],
      	),
      	body: Column(children: [
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
            	margin: EdgeInsets.symmetric(vertical: 5)
			),
			Column(children: _products.map((el) => Card(
				child: Column(
					children: <Widget>[
						Image.asset(
							'assests/image_riviera_broccoli.jpg',
							fit: BoxFit.cover,
						),
						RichText(
							text: TextSpan(
								text: el,
								style: TextStyle(
									// decoration: TextDecoration.underline,
									color: Colors.grey[600],
									fontStyle: FontStyle.italic
								),
							),
						)
					],
				),
				margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
				elevation: 5,
			),).toList())
      ]),
    ));
  }
}
