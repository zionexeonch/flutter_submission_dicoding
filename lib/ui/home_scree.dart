import 'package:flutter/material.dart';

import 'utama/home_grid.dart';
import 'utama/home_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        appBar: AppBar(
          title: Text("ShopTur"),
          backgroundColor: Color.fromARGB(255, 156, 49, 17),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return ProductList();
          } else if (constraints.maxWidth <= 1200) {
            return ProductGrid(2);
          } else {
            return ProductGrid(4);
          }
        }),
      );
    });
  }
}
