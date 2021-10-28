import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_project/Provider/Products.dart';

import '/Component/ProductOverview.dart';
import '/model/Product.dart';

class ShoppingSceen extends StatefulWidget {
  @override
  _ShoppingSceenState createState() => _ShoppingSceenState();
}

class _ShoppingSceenState extends State<ShoppingSceen> {
  @override
  Widget build(BuildContext context) {
    List<Product> myProduct = Provider.of<Products>(context).items;

    return Scaffold(
        appBar: AppBar(
          title: Text(" my Shopping screen"),
        ),
        body: GridView.builder(
          itemCount: myProduct.length,
          itemBuilder: (cx, i) => ProductOverview(
            product: myProduct[i],
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 3 / 2,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
        ));
  }
}
