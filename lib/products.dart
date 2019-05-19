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

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
				child: Column(
					children: <Widget>[
						Image.asset(
							'assests/image_riviera_broccoli.jpg',
							fit: BoxFit.cover,
						),
						RichText(
							text: TextSpan(
								text: products[index],
								style: Theme.of(context).textTheme.body1,
							),
						)
					],
				),
				margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
				elevation: 5,
			);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}