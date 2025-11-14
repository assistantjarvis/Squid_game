import 'package:flutter/material.dart';
import 'package:squid/utils/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // switch to mobile layout for narrow screens
        if (constraints.maxWidth < 600) {
          return MobileNavBar();
        }
        // otherwise show desktop layout
        return DeskTopNavBar();
      },
    );
  }
}

// ignore: library_private_types_in_public_api, non_constant_identifier_names
Widget MobileNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      children: [Icon(Icons.menu), navLogo()],
    ),
  );
}

// ignore: non_constant_identifier_names
Widget DeskTopNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu),
        Row(
          children: [
            navButton('Home'),
            navButton('About'),
            navButton('Cast'),
            navButton('Trailor')
          ],
        ),
        navLogo()
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
          onPressed: () {},
          child: Text(text,
              style: TextStyle(
                  color: text == 'Home' ? Colors.red : Colors.white,
                  fontSize: 18))));
}

Widget navLogo() {
  return SizedBox(
    height: 60,
    width: 180,
    child: Image.asset(netflix),
  );
}