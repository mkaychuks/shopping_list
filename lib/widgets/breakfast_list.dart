import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBreakFastCard extends StatefulWidget {
  String title;
  String qty;
  bool isChecked;

  MyBreakFastCard({
    required this.title,
    required this.qty,
    required this.isChecked,
    super.key,
  });

  @override
  State<MyBreakFastCard> createState() => _MyBreakFastCardState();
}

class _MyBreakFastCardState extends State<MyBreakFastCard> {

  // static bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 65.0,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                widget.isChecked = !widget.isChecked;
              });
            },
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: widget.isChecked ? Colors.grey : Colors.white,
                  borderRadius: BorderRadius.circular(9.0),
                  border: Border.all(color: Colors.grey, width: 1.0)),
              child: widget.isChecked ? const Icon(Icons.check) : null,
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      decoration: widget.isChecked ? TextDecoration.lineThrough : TextDecoration.none,
                      color: widget.isChecked ? Colors.grey : Colors.black),
                ),
                Text(
                  widget.qty,
                  style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
