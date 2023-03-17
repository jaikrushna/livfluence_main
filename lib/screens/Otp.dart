import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:livfluence_main/constants.dart';
import 'package:pinput/pinput.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'gender.dart';

class Otp extends StatefulWidget {
  Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  // text editing controllers
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    bool _isLoading = false;
    int press = 0;
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
                height: size.height * 0.1,
              ),
              Text(
                'Welcome',
                style: GoogleFonts.openSans(
                  color: '#000000'.toColor(),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                height: size.height * 0.1,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 17,
                  ),
                  Text(
                    'OTP Verification',
                    style: GoogleFonts.openSans(
                      color: '#595959'.toColor(),
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height * 0.06,
              ),
              Pinput(
                length: 6,
                onChanged: (value) {
                  // code = value;
                },
                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),

              // Row(
              //   children: [
              //     SizedBox(
              //       width: 28,
              //     ),
              //     Text(
              //       'Enter your mobile number',
              //       style: GoogleFonts.openSans(
              //         color: '#7E7E7E'.toColor(),
              //         fontSize: 16,
              //         fontWeight: FontWeight.w400,
              //       ),
              //     ),
              //   ],
              // ),
              Container(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      if (press == 1) {}
                    },
                    child: Countdown(
                      seconds: 30,
                      build: (BuildContext context, double time) =>
                          Text('Resend Code($time)',
                              style: TextStyle(
                                color: '#FF2626'.toColor(),
                              )),
                      interval: Duration(milliseconds: 100),
                      onFinished: () {
                        press = 1;
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     SizedBox(
              //       height: 6,
              //     ),
              //     Container(
              //       padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              //       child: IntlPhoneField(
              //         decoration: InputDecoration(
              //           border: OutlineInputBorder(
              //             borderSide: BorderSide(),
              //           ),
              //         ),
              //         style: TextStyle(
              //           fontSize: 15.0,
              //         ),
              //         initialValue: '456 789 64',
              //         //focusNode: focusNode1,
              //         invalidNumberMessage: 'Invalid Message',
              //         initialCountryCode: 'IN',
              //         onChanged: (phone) {},
              //       ),
              //     ),
              //   ],
              // ),
              Container(
                height: size.height * 0.045,
              ),
              FadeInDown(
                delay: Duration(milliseconds: 600),
                child: MaterialButton(
                  minWidth: 258,
                  onPressed: () {
                    Get.to(gender());
                    setState(() {
                      _isLoading = true;
                    });

                    Future.delayed(Duration(seconds: 2), () {
                      setState(() {
                        _isLoading = false;
                      });
/*                       Navigator.push(context, MaterialPageRoute(builder: (context) => Verificatoin())); */
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
                          "Submit",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              FadeInDown(
                delay: Duration(milliseconds: 800),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: '#A9A9A9'.toColor(),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Log in with other ways',
                        style: GoogleFonts.poppins(
                          color: '#A6A6A6'.toColor(),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: '#A9A9A9'.toColor(),
                      ),
                    ),
                  ],
                ),
              ),
              FadeInDown(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /* SizedBox(
                              width: 62,
                            ), */
                    IconButton(
                      icon: Image.asset('assets/images/google.png'),
                      iconSize: 20,
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    IconButton(
                      icon: Image.asset('assets/images/facebook.png'),
                      iconSize: 20,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
