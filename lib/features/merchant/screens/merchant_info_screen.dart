import 'package:flutter/material.dart';

class MerchantInfoScreen extends StatelessWidget {
  const MerchantInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Merchant Info"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              size: 38,
            ),
          )
        ],
      ),
    );
  }
}
