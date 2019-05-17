import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Products extends StatelessWidget {
  final List<String> products;
  
  // Products(this.products) {
  //   // only writting this.products inilialized it, no need tp do this.x = x;
  // }

  /* New way: having default value */
  Products([this.products = const []]) {
    // only writting this.products inilialized it, no need tp do this.x = x;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: products.map((el) => Card(
				child: Column(
					children: <Widget>[
						Image.asset(
							'assests/image_riviera_broccoli.jpg',
							fit: BoxFit.cover,
						),
						RichText(
							text: TextSpan(
								text: el,
								style: Theme.of(context).textTheme.body1,
							),
						)
					],
				),
				margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
				elevation: 5,
			),).toList());
  }
}