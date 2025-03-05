import 'package:flutter/material.dart';
import 'produk_model.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Tiket Wisata"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: dummyProducts.length,
        itemBuilder: (context, index) {
          final product = dummyProducts[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading:
                  Image.network(product.imageUrl, width: 80, fit: BoxFit.cover),
              title: Text(product.name,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(product.description),
              trailing: Text(
                "Rp ${product.price.toStringAsFixed(0)}",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content:
                          Text("${product.name} ditambahkan ke keranjang!")),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
