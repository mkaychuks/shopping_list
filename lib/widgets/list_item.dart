import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItemWidget extends StatelessWidget {
  ListItemWidget(
      {Key? key,
      required this.subtitle,
      required this.title,
      required this.imageBackgroundColor,
      required this.imagePath})
      : super(key: key);

  String title;
  String subtitle;
  Color imageBackgroundColor;
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 70.0,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: imageBackgroundColor,
              border: Border.all(color: imageBackgroundColor, width: 2.0),
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
                      height: 4.0,
                    ),
                    Text(
                      '$subtitle products',
                      style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.w400, color: Colors.grey),
                    )
                  ],
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
