import 'package:flutter/material.dart';

class CartCountBadge extends StatelessWidget {
  const CartCountBadge(this.cartSize);

  final int cartSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 11,
      top: 7,
      child: Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(6),
        ),
        constraints: BoxConstraints(
          minWidth: 14,
          minHeight: 14,
        ),
        child: Text(
          '$cartSize',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
