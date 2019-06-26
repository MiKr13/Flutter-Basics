import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_basics/pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  // Products(this.products) {
  //   // only writting this.products inilialized it, no need tp do this.x = x;
  // }

  /* New way: having default value */
  Products(this.products, {this.deleteProduct}) {
    // only writting this.products inilialized it, no need tp do this.x = x;
  }

  // _ is put in front of method name which is only going to be used inside this class, a convention.
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            products[index]['imageUrl'],
            fit: BoxFit.cover,
          ),
          RichText(
            text: TextSpan(
              text: '${products[index]['title']} $index',
              style: Theme.of(context).textTheme.body1,
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                child: Text('Show Details'),
                onPressed: () => Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductPage(
                            '${products[index]['title']} $index',
                            products[index]['imageUrl']),
                      ),
                ).then((bool value) {
                  if (value) {
                    deleteProduct(index);
                  }
                }),
              ),
              FlatButton(
                child: Text('Add to Wishlist'),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text('Buy Now'),
                onPressed: () => {},
              )
            ],
          )
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      elevation: 5,
    );
  }

  Widget _buildProductList(BuildContext context) {
    // Variable of type Widget
    Widget productCard = Center(
      child: RichText(
          text: TextSpan(
              text: 'No item added, please add some!',
              style: Theme.of(context).textTheme.title)),
    );
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList(context);
  }
}
