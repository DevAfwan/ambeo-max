import 'package:flutter/material.dart';

class Hero_Right extends StatelessWidget {
  const Hero_Right({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: Text(
        'HEAR THE\nFUTURE OF\nHOME \nCINEMA.',
        style: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
