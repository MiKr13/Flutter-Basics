import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct; // NOTE watch `26. Understanding const & final`

  // ProductManager(this.startingProduct); // constructor
  ProductManager({this.startingProduct}); // different way of passing data with names key and value

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState(); // we can pass startingProduct using constructor but there's a better way
  }
}

class _ProductManagerState extends State<ProductManager> {
  // _ makes it private to not be used by other files
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    if (widget.startingProduct != null) {
    // we can have used setstate too but there's no need to re-render a data coming from other file on file execution
    _products.add(widget.startingProduct); // we get the data without using constructor 
    }
    super.initState();
  }

  // NOTE watch `25. Passing Data Up` for button being in different file
  void _addProducts(Map<String, String> product) {
    setState(() {
     _products.add(product); 
    });
  }

  void _deleteProduct(int index) {
    setState(() {
     _products.removeAt(index); 
    });
  }

  // NOTE In product control file to get this, we put a constructor
  // final Function addProduct
  // ProductControl(this.addProduct);
  // onPressed: () { addProduct('Sweets'); }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          // NOTE watch `25. Passing Data Up` for button being in different file
          // child: ProductControl(_addProduct)
          child: RaisedButton(
            onPressed: () {
              _addProducts({'title': 'Advanced Broccoli', 'imageUrl': 'assests/image_riviera_broccoli.jpg'});
            },
            color: Theme.of(context).accentColor,
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
          margin: EdgeInsets.symmetric(vertical: 5)
        ),
        Expanded(
          child: Products(_products, deleteProduct: _deleteProduct),
        )
        // Products(_products)
      ],
    );
  }
}
