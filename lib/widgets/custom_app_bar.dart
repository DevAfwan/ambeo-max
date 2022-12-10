import 'package:flutter/material.dart';
import 'package:webapp/widgets/widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    String urls = "https://img.icons8.com/ios/15/null/search--v1.png";
    final borderSized = BorderSide(width: 0.2, color: Colors.black);
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: borderSized,
        ),
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () => print("LOGO"),
            child: Image.asset(
              'assets/images/Sennheiser.png',
              scale: 4,
              width: 200,
            ),
          ),
          // Search Field
          Container(
            width: 450,
            padding: new EdgeInsets.fromLTRB(16.0, 20.0, 26.0, 20.0),
            child: Expanded(
              child: TextField(
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  fillColor: Color(0xffD0D0D0),
                  filled: true,
                  hintText: "Search",
                  hintStyle: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 148, 148, 148)),
                  suffixIcon: Container(
                    child: Image.network(
                      urls.toString(),
                      scale: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(185, 131, 131, 131),
                          width: 0.1),
                      borderRadius: BorderRadius.circular(50)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26, width: 0.1),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ),
          ),
          // Search Field ENDS
          Row(
            children: [
              _navlinks(
                title: "Headphones",
                ontabtext: "Headphones",
              ),
              _navlinks(
                title: "Pro Audio",
                ontabtext: "Pro Audio",
              ),
              _navlinks(
                title: "Business",
                ontabtext: "Business",
              ),
              _navlinks(
                title: "Support",
                ontabtext: "Support",
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 22, 0, 22),
            child: VerticalDivider(
              thickness: 1,
              width: 0.2,
              color: Color.fromARGB(255, 119, 119, 119),
            ),
          ),

          GestureDetector(
            onTap: () => print('object'),
            child: Container(
              child: Row(
                children: [
                  Text(
                    'Cart',
                    style: GoogleFonts.kanit(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 10),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.black,
                    child: Center(
                      child: Text(
                        "O",
                        style: GoogleFonts.kanit(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _navlinks extends StatelessWidget {
  final String title;
  final String ontabtext;

  const _navlinks({super.key, required this.title, required this.ontabtext});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print(ontabtext),
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Text(
          title,
          style: GoogleFonts.kanit(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
