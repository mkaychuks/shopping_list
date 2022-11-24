import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_list_ui/constants/model.dart';
import 'package:shopping_list_ui/widgets/cart_list_item.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
// creating a list that handles the Items models
  List<CartItems> cartItems = [
    CartItems(
        subtitle: 'Clif Crunchy Nut Butter Bar',
        title: '\$2.50',
        imagePath: 'images/egg.jpg',
        imageBackgroundColor: const Color.fromARGB(255, 244, 195, 212),
        quantity: '4',
        weight: '2.4'),
    CartItems(
      title: '\$3.69',
      subtitle: 'Tostiso Chunky Salsa',
      imagePath: 'images/pizza.jpg',
      imageBackgroundColor: const Color.fromARGB(255, 188, 220, 204),
      quantity: '1',
      weight: '15.5',
    ),
    CartItems(
      title: '\$7.99 /lb',
      subtitle: 'Prago Super veggies Traditional',
      imagePath: 'images/beer.jpg',
      imageBackgroundColor: const Color.fromARGB(255, 244, 195, 212),
      quantity: '1.5',
      weight: '2',
    ),
    CartItems(
      title: '\$0.99 /lb',
      subtitle: 'Autumn glory apple',
      imagePath: 'images/spaghetti.jpg',
      imageBackgroundColor: const Color.fromARGB(255, 244, 195, 212),
      quantity: '2.5lb',
      weight: '2',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              ListView.builder(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: cartItems.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return CartListItem(
                      subtitle: cartItems[index].subtitle,
                      title: cartItems[index].title,
                      imageBackgroundColor:
                          cartItems[index].imageBackgroundColor!,
                      imagePath: cartItems[index].imagePath,
                      quantity: cartItems[index].quantity,
                      weight: cartItems[index].weight);
                },
              ),
              const SizedBox(
                height: 100.0,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  width: 350,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color.fromARGB(255, 237, 89, 66),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Checkout',
                        style: GoogleFonts.notoSans(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '\$21.27',
                        style: GoogleFonts.notoSans(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
