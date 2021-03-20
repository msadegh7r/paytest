import 'package:flutter/material.dart';
import 'package:paymo/sections/paymoheader.dart';
import 'package:paymo/views/homepage.dart';
class SingleProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
