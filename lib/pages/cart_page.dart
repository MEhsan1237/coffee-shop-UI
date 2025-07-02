import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text(
          "Cart Details",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
         leading: IconButton(
            highlightColor: Colors.blue,
            onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back_ios_new,size: 16,)),
      ),
      body:Center(child: Text("Cart Information")),
    );
  }
}
