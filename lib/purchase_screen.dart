import 'package:flutter/material.dart';
import 'main.dart';
import 'cart_screen.dart';

class PurchaseScreen extends StatelessWidget {
  final List<Product> purchasedProducts;
  final double totalCost;

  PurchaseScreen({
    required this.purchasedProducts,
    required this.totalCost,
    required String email, // Agrega el argumento 'email'
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Purchase Confirmation',
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.orange[500],
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          Text('           Gracias por tu compra! ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
          SizedBox(height: 16), // Add some spacing
          Text(
            'Total Cost: \$${totalCost.toStringAsFixed(2)}', // Display the total cost
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
