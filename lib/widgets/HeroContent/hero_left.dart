import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'hero_export.dart';

class Hero_Left extends StatelessWidget {
  const Hero_Left({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'AMBEO\nSoundbar | MAX',
            style: GoogleFonts.montserrat(
              height: 1.0,
              fontSize: 105,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


//  GoogleFonts.notoSansChakma