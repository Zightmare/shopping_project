import 'package:flutter/material.dart';

import '/Screens/ProductDetailsSCreen.dart';
import '/model/Product.dart';

class ProductOverview extends StatelessWidget {
  final Product? product;
  ProductOverview({this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(product?.title);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailsScreen(product)));
      },
      child: ClipRRect(
        child: GridTile(
          child: Image(
            image: NetworkImage(product?.imageUrl ?? ""),
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Text(
              product?.title ?? "",
              style: TextStyle(color: Colors.orange),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.favorite,
                color: product?.isFav == true ? Colors.orange : Colors.grey,
              ),
              onPressed: () {},
            ),
            trailing: Icon(
              Icons.add_shopping_cart,
              color: Colors.orange,
            ),
          ),
        ),
      ),
    );
  }
}
