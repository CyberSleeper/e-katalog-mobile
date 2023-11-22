import 'package:e_katalog/models/product.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Product product;

  const DetailPage({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Product Name: ${product.fields.name}",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Text(
              "Amount: ${product.fields.amount}",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Text(
              "Description: ${product.fields.description}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}