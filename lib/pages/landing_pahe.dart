import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xff1F1E3C),
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? Color(0xffFe998D)
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'background.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 30,
              ),
              child: Column(
                children: [
                  // NOTE: Navigation

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'logo.png',
                        width: 72,
                        height: 40,
                      ),
                      Row(
                        children: [
                          navItem(title: "Guides", index: 0),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(title: "Pricing", index: 1),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(title: "Team", index: 2),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(title: "Stories", index: 3),
                        ],
                      ),
                      Image.asset(
                        'button_akun.png',
                        width: 163,
                        height: 53,
                      ),
                    ],
                  ),
                  // Note : Content

                  SizedBox(
                    height: 76,
                  ),
                  Image.asset(
                    'ilustrasi.png',
                    width: 550,
                  ),

                  //NOTE : Footer
                  SizedBox(
                    height: 84,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'icon_scroll.png',
                        width: 24,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        'Scroll to Learn More',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
