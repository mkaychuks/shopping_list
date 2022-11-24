import 'package:flutter/cupertino.dart';

class Items {
  String title;
  String subtitle;
  Color? imageBackgroundColor;
  String imagePath;

  Items(
      {required this.subtitle,
      required this.title,
      required this.imageBackgroundColor,
      required this.imagePath});
}

class CartItems extends Items {
  String weight;
  String quantity;

  CartItems(
      {required String title,
      required String subtitle,
      required Color? imageBackgroundColor,
      required String imagePath,
      required this.quantity,
      required this.weight})
      : super(
            title: title,
            subtitle: subtitle,
            imageBackgroundColor: imageBackgroundColor,
            imagePath: imagePath);
}
