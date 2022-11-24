import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_list_ui/screens/my_breakfast.dart';

import '../constants/model.dart';
import '../widgets/list_item.dart';

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({super.key});

  @override
  State<ShoppingListScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  // creating a list that handles the Items models
  List<Items> items = [
    Items(
        subtitle: '8',
        title: 'Morning breakfast',
        imagePath: 'images/egg.jpg',
        imageBackgroundColor: const Color.fromARGB(255, 244, 195, 212)),
    Items(
        subtitle: '4',
        title: 'Dinner by Sarah',
        imagePath: 'images/pizza.jpg',
        imageBackgroundColor: const Color.fromARGB(255, 188, 220, 204)),
    Items(
        subtitle: '8',
        title: 'Pizza day!',
        imagePath: 'images/pizza.jpg',
        imageBackgroundColor: const Color.fromARGB(255, 244, 195, 212)),
    Items(
        subtitle: '10',
        title: 'Italian spaghetti',
        imagePath: 'images/spaghetti.jpg',
        imageBackgroundColor: const Color.fromARGB(255, 244, 195, 212)),
    Items(
        subtitle: '7',
        title: 'Drinks',
        imagePath: 'images/beer.jpg',
        imageBackgroundColor: const Color.fromARGB(255, 244, 195, 212)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our recommendations',
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                  letterSpacing: 1.5),
            ),
            const SizedBox(
              height: 8.0,
            ),
            ListItemWidget(
                subtitle: '10',
                title: 'Often purchased',
                imagePath: 'images/watermelon.jpg',
                imageBackgroundColor: const Color.fromARGB(255, 248, 175, 200)),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              'Recently created',
              style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                  letterSpacing: 1.5),
            ),
            ListView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListItemWidget(
                  subtitle: items[index].subtitle,
                  title: items[index].title,
                  imagePath: items[index].imagePath,
                  imageBackgroundColor: items[index].imageBackgroundColor!,
                );
              },
            ),
            const SizedBox(
              height: 100.0,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyBreakFastSCreen(),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 350,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: const Color.fromARGB(255, 237, 89, 66),
                  ),
                  child: Text(
                    'Create new list',
                    style: GoogleFonts.notoSans(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
