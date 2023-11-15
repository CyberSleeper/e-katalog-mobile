import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/left_drawer.dart';

class ShopListPage extends StatelessWidget {
  const ShopListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Daftar Produk',
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: Product.productList.length,
        itemBuilder: (context, index) {
          final product = Product.productList[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: Text('Stok: ${product.amount.toString()}'),
          );
        },
      ),
    );
  }
}
