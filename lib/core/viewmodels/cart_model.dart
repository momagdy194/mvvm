import 'package:shopnbuy/core/models/product.dart';

import 'base_model.dart';

class CartModel extends BaseModel {
  List<Product> cart = [];
  Map<String, List<Product>> cartSummary = {};

  int get cartSize {
    return cart != null ? cart.length : 0;
  }

  void addToCart(Product product) {
    cart.add(product);
    notifyListeners();
  }

  List<Product> getCart() {
    return cart;
  }

  Map<String, List<Product>> getCartSummary() {
    cartSummary = {};
    cart.forEach((product) {
      if (!cartSummary.keys.contains(product.name)) {
        cartSummary[product.name] = [product];
      } else {
        var currentProducts = cartSummary[product.name];
        currentProducts.add(product);
        cartSummary[product.name] = currentProducts;
      }
    });
    return cartSummary;
  }

  Product getProduct(int index) {
    var name = cartSummary.keys.elementAt(index);
    return cartSummary[name].first;
  }

  int getProductQuantity(int index) {
    var name = cartSummary.keys.elementAt(index);
    return cartSummary[name].length;
  }

  int get totalCost {
    var cost = 0;
    cartSummary.keys.forEach((productName) {
      cost += (cartSummary[productName].first.price *
          cartSummary[productName].length);
    });
    return cost;
  }

  void clearCart() {
    cart = [];
    notifyListeners();
  }
}
