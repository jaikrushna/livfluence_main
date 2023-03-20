import 'package:animate_do/animate_do.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:livfluence_main/constants.dart';
// import 'package:livfluence_main/constants/customSnackBar.dart';
// import 'package:livfluence_main/screens/enter_otp.dart';
// import 'package:livfluence_main/screens/main_page.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
// import '../controllers/loginController.dart';

class WelcomeView extends StatefulWidget {
  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  DateTime dateTime = DateTime.now();
  // text editing controllers
  // final _auth = FirebaseAuth.instance;
  // final _firebase = FirebaseFirestore.instance;
  bool spinner = false;
  late String firstname;
  late String docId;
  List<String> GenderList = ['Male', 'Female', 'None'];

  late Map<String, dynamic> userData;
  final _formKey = GlobalKey<FormState>();
  final AutovalidateMode _autoValidate = AutovalidateMode.onUserInteraction;

  TextEditingController firstnameCtrl = TextEditingController();
  TextEditingController genderCtrl = TextEditingController();
  TextEditingController _dateController = TextEditingController();

  String gender = 'none';
  Color _gendF = Colors.white;
  Color _gendM = Colors.white;
  //genderCtrl.text = "none";
  @override
  Widget build(BuildContext context) {
    bool _isLoading = false;
    Size size = MediaQuery.of(context).size;
    int col;

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
        body: ModalProgressHUD(
          inAsyncCall: spinner,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: _formKey,
                autovalidateMode: _autoValidate,
                child: Column(
                  children: [
                    Container(
                      height: size.height * 0.05,
                    ),
                    Text(
                      'Please fill in the information',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        color: '#000000'.toColor(),
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: size.height * 0.07,
                    ),
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       child: ,
                    //       width: 80,
                    //     ),
                    //     Image.asset('assets/images/Girl.png'),
                    //     SizedBox(
                    //       width: 130,
                    //     ),
                    //     Image.asset('assets/images/Boy.png'),
                    //   ],
                    // ),
                    Row(
                      children: [
                        SizedBox(
                          width: 28,
                        ),
                        Row(
                          children: [
                            Card(
                              color: _gendF,
                              child: IconButton(
                                icon:
                                    Image.asset('assets/images/Group 663.png'),
                                iconSize: 120,
                                onPressed: () {
                                  gender = GenderList[1];
                                  setState(() {
                                    if (_gendF == Colors.white) {
                                      _gendF = '#D9D9D94'.toColor();
                                      _gendM = Colors.white;
                                    } else {
                                      _gendF = Colors.white;
                                      // gendM = Colors.white;
                                    }
                                    genderCtrl.text = gender;
                                  });
                                  print(gender);
                                  // CustomSnackBar.showSnackBar(
                                  //   context: Get.context,
                                  //   title: "Gender Selection",
                                  //   message: "Girl has been selected",
                                  //   backgroundColor: Color.fromARGB(0, 9, 8, 8),
                                  // );
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Card(
                              color: _gendM,
                              child: IconButton(
                                color: _gendM,
                                icon: Image.asset('assets/images/Boy.png'),
                                iconSize: 120,
                                onPressed: () {
                                  //controller.login();
                                  gender = GenderList[0];
                                  setState(() {
                                    genderCtrl.text = gender;
                                    if (_gendM == Colors.white) {
                                      _gendM = '#D9D9D94'.toColor();
                                      _gendF = Colors.white;
                                    } else {
                                      _gendM = Colors.white;
                                      // gendM = Colors.white;
                                    }
                                  });

                                  print(gender);
                                  // CustomSnackBar.showSnackBar(
                                  //   context: Get.context,
                                  //   title: "Gender Selection",
                                  //   message: "Boy has been selected",
                                  //   backgroundColor: Color.fromARGB(0, 9, 8, 8),
                                  // );
                                  controller:
                                  genderCtrl.text;
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: size.height * 0.04,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 28,
                        ),
                        Text(
                          'Nickname',
                          textAlign: TextAlign.left,
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
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 28.0, right: 40.0),
                          child: TextFormField(
                            validator: (value) {
                              return (value?.isEmpty)!
                                  ? 'Required Field'
                                  : null;
                            },
                            autofocus: true,
                            controller: firstnameCtrl,
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              firstname = value;
                            },
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              fillColor: Colors.black,
                              labelText: 'Enter your Nickname',
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.045,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 28,
                            ),
                            Text(
                              'Select your Date of Birth',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.openSans(
                                color: '#7E7E7E'.toColor(),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),

                        /* Container(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                      initialValue: '456 789 64',
                      //focusNode: focusNode1,
                      invalidNumberMessage: 'Invalid Message',
                      initialCountryCode: 'IN',
                      onChanged: (phone) {},
                    ),
                  ), */
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0, right: 40.0),
                      child: SizedBox(
                          height: 100,
                          child: TextFormField(
                            readOnly: true,
                            controller: _dateController,
                            decoration: InputDecoration(
                              labelText: 'Date',
                            ),
                            onTap: () async {
                              await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2015),
                                lastDate: DateTime(2025),
                              ).then((selectedDate) {
                                // if (selectedDate != null) {
                                //   _dateController.text =
                                //       // DateFormat('yyyy-MM-dd')
                                //       //     .format(selectedDate);
                                // }
                              });
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter date.';
                              }
                              return null;
                            },
                          )
                          /* CupertinoDatePicker(
                          minimumYear: 1950,
                          maximumYear: DateTime.now().year,
                          initialDateTime: dateTime,
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (dateTime) =>
                              setState(() => this.dateTime = dateTime),
                        ), */
                          ),
                    ),
                    Container(
                      height: size.height * 0.045,
                    ),
                    FadeInDown(
                      delay: Duration(milliseconds: 600),
                      child: MaterialButton(
                        minWidth: 258,
                        onPressed: () async {
                          Map<String, dynamic> data = {
                            "nickname": firstnameCtrl.text,
                            "gender": genderCtrl.text,
                            "dob": _dateController.text,
                          };
                          print('data ${data["dob"]}');
                          // await _firebase.collection("users").add(data);
                          // Get.to(MainView());
                        },
                        color: '#D41717'.toColor(),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        child: /*_isLoading
                      ? Container(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                            color: Colors.black,
                            strokeWidth: 2,
                          ),
                        )
                      :*/
                            Text(
                          "Save Information",
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
