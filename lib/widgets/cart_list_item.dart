import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartListItem extends StatelessWidget {
  CartListItem(
      {Key? key,
      required this.subtitle,
      required this.title,
      required this.imageBackgroundColor,
      required this.imagePath,
      required this.quantity,
      required this.weight,
      })
      : super(key: key);

  String title;
  String subtitle;
  Color imageBackgroundColor;
  String imagePath;
  String quantity;
  String weight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 90.0,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                  imagePath,
                ),
              ),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      subtitle,
                      style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                      ),
                    ),
                    const SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      '$weight oz',
                      style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          fontSize: 12.0),
                    ),
                  ],
                ),
                Container(
                  width: 45,
                  height: 45,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(width: 1.0, color: Colors.grey),
                  ),
                  child: Text(
                    quantity,
                    style: const TextStyle(fontSize: 12.0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
