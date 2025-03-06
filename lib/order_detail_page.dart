import 'package:flutter/material.dart';
import 'produk_model.dart';

class OrderDetailPage extends StatelessWidget {
  final Product product;

  const OrderDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(product.imageUrl,
                  width: 300, height: 200, fit: BoxFit.cover),
            ),
            SizedBox(height: 20),
            Text(product.name,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(product.description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text(
              "Harga: Rp ${product.price.toStringAsFixed(0)}",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () => _showQrisDialog(context),
                  icon: Icon(Icons.qr_code),
                  label: Text("Bayar QRIS"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
                ElevatedButton.icon(
                  onPressed: () => _showCashDialog(context),
                  icon: Icon(Icons.money),
                  label: Text("Bayar Tunai"),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Alert Dialog untuk pembayaran QRIS
  void _showQrisDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Pembayaran QRIS"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network("https://source.unsplash.com/300x300/?qrcode"),
            SizedBox(height: 10),
            Text("Scan QR di atas untuk menyelesaikan pembayaran."),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context), child: Text("Tutup")),
        ],
      ),
    );
  }

  // Alert Dialog untuk pembayaran tunai
  void _showCashDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Pembayaran Tunai"),
        content: Text("Silakan bayar tunai di loket saat kedatangan."),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context), child: Text("Tutup")),
        ],
      ),
    );
  }
}
