import 'package:flutter/material.dart';

class NavBarItemWithBadge extends StatelessWidget {
  NavBarItemWithBadge({super.key, required this.iconName});

  final _counter = 5;
  IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Icon(iconName),
        Positioned(
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(1),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(6),
            ),
            constraints: const BoxConstraints(
              minWidth: 12,
              minHeight: 12,
            ),
            child: Text(
              '$_counter',
              style:  const TextStyle(
                color: Colors.white,
                fontSize: 7,
              ),
            ),
          ),
        )
      ],
    );
  }
}
