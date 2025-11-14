
import 'package:flutter/material.dart';
import 'package:squid/utils/constants.dart';
import 'package:squid/widgets/navbar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return ScreenTypeLayout(
      mobile: mobileMainContent(context),
      desktop: desktopMainContent(context),
    );
  }
}

Widget mobileMainContent(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(squid_game, width: width * 0.85),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(figures, width: 60),
            const SizedBox(width: 12),
            Flexible(
              child: Text(
                'Life is like a game, there are many players. \nIf you don’t play with them, they’ll play with you...',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: width / 24),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 44,
          child: ElevatedButton(
            style: ButtonStyle(
              elevation: WidgetStateProperty.all(8),
              // ignore: deprecated_member_use
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              backgroundColor: WidgetStateProperty.all(
                const Color(0xffE50914),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Continue Watching',
              style: TextStyle(letterSpacing: 1.2),
            ),
          ),
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              navButton('S1'),
              navButton('E9'),
              navButton('2021'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset(imdb, width: 50),
              ),
              navButton('8.2'),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Image.asset(squid, width: width * 0.9),
      ],
    ),
  );
}

Widget desktopMainContent(BuildContext context) {
  return Expanded(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(squid_game),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(figures),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Life is like a game, there are many players. \nIf you don’t play with them, they’ll play with you...',
                        style: TextStyle(fontSize: (w ?? 800) / 70),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Icon(Icons.trending_up, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            'Trending  #1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: (w ?? 800) / 70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32),
              SizedBox(
                height: 42,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: WidgetStateProperty.all(40),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.all(
                      Color(0xffE50914),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Continue Watching',
                    style: TextStyle(letterSpacing: 1.2, fontSize: 19),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  navButton('S1'),
                  navButton('E9'),
                  navButton('2021'),
                  Image.asset(imdb),
                  navButton('8.2'),
                ],
              ),
            ],
          ),
        ),
        Expanded(child: Image.asset(squid)),
      ],
    ),
  );
}
