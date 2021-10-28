import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_project/Provider/Products.dart';

import '/model/Product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product? product;

  ProductDetailsScreen(this.product);

  @override
  Widget build(BuildContext context) {
    var SuggProductsList =
        Provider.of<Products>(context).items; //get the product imtem

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(product?.title ?? ""),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange, width: 15),
                ),
                child: Image(
                  image: NetworkImage(product?.imageUrl ?? ""),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                product?.description ?? "",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "the product price is : ${product?.price.toString() ?? ""}",
                style: TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
              ),
              SizedBox(
                child: Row(
                  children: SuggProductsList.map(
                      (SuggItems) => product == SuggProductsList
                          ? Container()
                          : Container(
                              height: height * 0.15,
                              width: width * 0.2,
                              child: Image(
                                image:
                                    NetworkImage(SuggItems.imageUrl ?? "none"),
                                fit: BoxFit.cover,
                              ),
                            )).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
