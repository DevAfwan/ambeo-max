import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    var sized = TextStyle(
      fontSize: 11.5,
      color: Color.fromARGB(255, 119, 119, 119),
    );
    return Container(
      height: 80.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(right: 20),
              // color: Colors.deepPurpleAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Imprint', style: sized),
                  Text('Global Privacy Policy', style: sized),
                  Text('Web privacy & Cookie Policy', style: sized),
                  Text('Cookie Settings', style: sized),
                ],
              ),
            ),
          ),
          SizedBox(width: 20),
          // NEW
          Expanded(
            flex: 1,
            child: Container(
              // color: Colors.deepPurpleAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '© 2022 Senheiser electronic GmbH & Co. MU | INDIA',
                    style: sized,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 22, 0, 22),
                    child: VerticalDivider(
                      thickness: 1,
                      width: 0.2,
                      color: Color.fromARGB(255, 119, 119, 119),
                    ),
                  ),
                  _DropButton(title: 'India'),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 22, 0, 22),
                    child: VerticalDivider(
                      thickness: 1,
                      width: 0.2,
                      color: Color.fromARGB(255, 119, 119, 119),
                    ),
                  ),
                  _DropButton(title: 'English')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DropButton extends StatelessWidget {
  final String title;

  const _DropButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 11.5,
              color: Color.fromARGB(255, 119, 119, 119),
            ),
          ),
          Icon(
            Icons.arrow_drop_down_rounded,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
