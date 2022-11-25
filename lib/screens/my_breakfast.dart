import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_list_ui/widgets/breakfast_list.dart';

class MyBreakFastSCreen extends StatefulWidget {
  const MyBreakFastSCreen({super.key});

  @override
  State<MyBreakFastSCreen> createState() => _MyBreakFastSCreenState();
}

class _MyBreakFastSCreenState extends State<MyBreakFastSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8.0,
            ),
            Text(
              'Morning breakfast',
              style: GoogleFonts.notoSans(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(height: 8.0),
            headingText('Diary'),
            const SizedBox(height: 10.0),
            MyBreakFastCard(
              qty: '1gal',
              title: 'Milk',
              isChecked: false,
            ),
            const Divider(
              height: 2.0,
            ),
            MyBreakFastCard(
              qty: '1ct',
              title: 'Butter',
              isChecked: false,
            ),
            const Divider(
              height: 2.0,
            ),
            MyBreakFastCard(
              qty: '1ct',
              title: 'Parmesan cheese',
              isChecked: false,
            ),
            const Divider(
              height: 2.0,
            ),
            MyBreakFastCard(
              qty: '4ct',
              title: 'Eggs',
              isChecked: false,
            ),
            headingText('Bakery'),
            MyBreakFastCard(
              qty: '1ct',
              title: 'Bread',
              isChecked: false,
            ),
            const Divider(
              height: 2.0,
            ),
            MyBreakFastCard(
              qty: '2ct',
              title: 'Blueberry muffins',
              isChecked: false,
            ),
            const Divider(
              height: 2.0,
            ),
            headingText('Drinks'),
            MyBreakFastCard(
              qty: '1ct',
              title: 'Mocha coffee',
              isChecked: false,
            ),
            const Divider(
              height: 2.0,
            ),
            MyBreakFastCard(
              qty: '1gal',
              title: 'Orange juice',
              isChecked: false,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              const Icon(FluentSystemIcons.ic_fluent_mic_on_regular,size: 35.0,),
              const SizedBox(width: 30.0,),
              floatingButton(),
              const SizedBox(width: 30.0,),
              const Icon(Icons.qr_code_scanner_rounded, size: 35.0,),
              const Spacer(),
            ],
          ),
        )
      ),
    );
  }

  Container floatingButton() {
    return Container(
      width: 80,
      height: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: const Color.fromARGB(255, 237, 89, 66),
      ),
      child: const Text(
        '+',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }

// handles the name of the heading texts
  Text headingText(String heading) {
    return Text(
      heading,
      style: GoogleFonts.notoSans(
        color: Colors.grey,
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
