import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:livfluence_main/constants.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/video_AdobeExpress 1.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.154),
                  Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/logo1.png'),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'LIVFLUENCE',
                              style: GoogleFonts.bungee(
                                color: '#D41717'.toColor(),
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    offset: Offset(0.0, 4.0),
                                    blurRadius: 15.0,
                                    color: '#000000'.toColor(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 370,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                'Log In',
                                style: GoogleFonts.poppins(
                                  color: '#E1E1E1'.toColor(),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            /* SizedBox(
                              width: 62,
                            ), */
                            IconButton(
                              icon: Image.asset('assets/images/google.png'),
                              iconSize: 50,
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 37,
                            ),
                            IconButton(
                              icon: Image.asset('assets/images/facebook.png'),
                              iconSize: 50,
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 37,
                            ),
                            IconButton(
                              icon: Image.asset(
                                  'assets/images/smartphone (1) 1.png'),
                              iconSize: 50,
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 68,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'By using Livefluence, you agree to the',
                                  style: GoogleFonts.openSans(
                                    color: '#FFFFFF'.toColor(),
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  'Terms of Service',
                                  style: GoogleFonts.openSans(
                                    color: '#D41717'.toColor(),
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'and ',
                                  style: GoogleFonts.openSans(
                                    color: '#FFFFFF'.toColor(),
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  'Privacy Policy',
                                  style: GoogleFonts.openSans(
                                    color: '#D41717'.toColor(),
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
