import 'package:flutter/material.dart';
import 'package:submission_dicoding_flutter_course/model/product.dart';

import 'rincian/mobile_detail.dart';
import 'rincian/web_detail.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  Product product;

  DetailScreen(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return WebDetailPage(product);
      } else {
        return MobileDetailPage(product);
      }
    });
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<StatefulWidget> createState() => _FavoriteButton();
}

class _FavoriteButton extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
