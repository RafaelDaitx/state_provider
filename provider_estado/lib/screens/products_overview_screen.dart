import 'package:flutter/material.dart';
import 'package:shop/components/product_item.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/products.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = dummyProducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,

        ///EXIBIR APENAS OS ELEMENTOS QUE TENHO NA LISTA
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,

          ///EXIBE DOIS ELEMENTOS POR LINHA
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => ProductItem(product: loadedProducts[i]),

        ///PEGA APENAS O TITULO DE ACORDO COM O INDICE DOS PRODUTOS
      ),
    );
  }
}
