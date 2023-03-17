import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:livfluence_main/constants.dart';
import 'Otp.dart';

class gender extends StatefulWidget {
  gender({super.key});

  @override
  State<gender> createState() => _genderState();
}

class _genderState extends State<gender> {
  // text editing controllers
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    bool _isLoading = false;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: '#F5F5F5'.toColor(),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Image.asset('assets/images/backbutton.png'),
          ),
          //centerTitle: true,
          title: Image.asset('assets/images/Group 635.png'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.063,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Please fill in ',
                        style: GoogleFonts.openSans(
                          color: '#000000'.toColor(),
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'the information',
                        style: GoogleFonts.openSans(
                          color: '#000000'.toColor(),
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.1,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.050,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: '#D9D9D940'.toColor(),
                      ),
                      onPressed: null,
                      child: Image.asset('assets/images/Group 663.png'),
                    ),
                    SizedBox(
                      width: size.width * 0.050,
                    ),
                    ElevatedButton(
                      onPressed: null,
                      child: Image.asset('assets/images/Boy.png'),
                    )
                  ],
                ),
                Container(
                  height: size.height * 0.06,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.063,
                        ),
                        Text(
                          'Nickname',
                          style: GoogleFonts.openSans(
                            color: '#5A5A5A'.toColor(),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.063,
                        ),
                        // TextField(
                        //     decoration: InputDecoration(
                        //       border: OutlineInputBorder(),
                        //       hintText: 'Shrishti',
                        //     ),
                        //     style: GoogleFonts.openSans(
                        //       color: '#3F3F3F'.toColor(),
                        //       fontSize: 16,
                        //       fontWeight: FontWeight.w600,
                        //     ))
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.042,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.063,
                        ),
                        Text(
                          'Birthday',
                          style: GoogleFonts.openSans(
                            color: '#5A5A5A'.toColor(),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.0,
                        ),
                        TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: '15-10-2002',
                            ),
                            style: GoogleFonts.openSans(
                              color: '#3F3F3F'.toColor(),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: size.height * 0.045,
                ),

                // FadeInDown(
                //   delay: Duration(milliseconds: 600),
                //   child:
                MaterialButton(
                  minWidth: 258,
                  onPressed: () {
                    setState(() {
                      _isLoading = true;
                      Get.to(Otp());
                    });

                    Future.delayed(Duration(seconds: 2), () {
                      setState(() {
                        _isLoading = false;
                      });
                    });
                  },
                  color: '#D41717'.toColor(),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9)),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: _isLoading
                      ? Container(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                            color: Colors.black,
                            strokeWidth: 2,
                          ),
                        )
                      : Text(
                          "Next",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                ),
                // ),
              ],
              // ),
            ),
          ),
        ));
  }
}
