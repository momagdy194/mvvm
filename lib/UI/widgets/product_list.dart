import 'package:flutter/material.dart';
import 'package:shopnbuy/core/models/product.dart';
import 'package:shopnbuy/core/viewmodels/cart_model.dart';
import 'package:shopnbuy/ui/widgets/product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList(this.products, this.cartModel);

  final List<Product> products;
  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Padding(
              child: InkWell(
                  child: ProductCard(products[index]),
                  onTap: () {
                    cartModel.addToCart(products[index]);
                  }),
              padding: EdgeInsets.all(10.0),
            ),
          ],
        );
      },
      itemCount: products.length,
    );
  }
}
