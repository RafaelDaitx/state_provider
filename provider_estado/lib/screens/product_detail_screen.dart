import 'package:flutter/material.dart';
import 'package:shop/models/products.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)?.settings.arguments as Product;

    ///APROVEITA A MESMA INSTANCIA PARA PASSAR O NOME

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}
