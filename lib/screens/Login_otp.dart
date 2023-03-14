import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:livfluence_main/constants.dart';

class LoginOtp extends StatefulWidget {
  LoginOtp({super.key});

  @override
  State<LoginOtp> createState() => _LoginOtpState();
}

class _LoginOtpState extends State<LoginOtp> {
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
      body: Padding(
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
                  width: 28,
                ),
                Text(
                  'Login with Phone no.',
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
            Row(
              children: [
                SizedBox(
                  width: 28,
                ),
                Text(
                  'Enter your mobile number',
                  style: GoogleFonts.openSans(
                    color: '#7E7E7E'.toColor(),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Container(
              height: size.height * 0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 6,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black.withOpacity(0.13)),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                        child: InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {
                            print(number.phoneNumber);
                          },
                          onInputValidated: (bool value) {
                            print(value);
                          },
                          /* selectorConfig: SelectorConfig(
                                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                              ), */
                          ignoreBlank: false,
                          //autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: TextStyle(color: Colors.black),
                          //textFieldController: controller,
                          formatInput: false,
                          maxLength: 9,
                          keyboardType: TextInputType.numberWithOptions(
                              signed: true, decimal: true),
                          cursorColor: Colors.black,
                          inputDecoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(bottom: 15, left: 0),
                            border: InputBorder.none,
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                                color: Colors.grey.shade500, fontSize: 16),
                          ),
                          /* onSaved: (PhoneNumber number) {
                                print('On Saved: $number');
                              }, */
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: size.height * 0.045,
            ),
            FadeInDown(
              delay: Duration(milliseconds: 600),
              child: MaterialButton(
                minWidth: 258,
                onPressed: () {
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
                        "Send",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
              ),
            ),
            SizedBox(
              height: 100,
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
            Row(
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
          ],
        ),
      ),
    );
  }
}
