import 'package:flutter/material.dart';

import '../models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
      child: Column(
        children: [
          const Icon(Icons.favorite),
          Text(product.name),
          Text(product.description),
          Text(
            product.price.toStringAsFixed(2),
          )
        ],
      ),
    );
  }
}
