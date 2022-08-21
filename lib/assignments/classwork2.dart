
import 'package:classwork/assignments/classwork.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key,});

  @override
  State<RegisterPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RegisterPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Colors.white,
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Padding(padding: EdgeInsets.only(left: 13,right: 13,top: 55),
              child: Text(
                'Create Account',
                style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.w700,
                  fontFamily: "Open sans",fontStyle: FontStyle.normal,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 14,right: 15,top: 23),
              child: Text(
                'Hi, kindly fill in the form to proceed',
                style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400,
                  fontFamily: "Open sans",fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  obscureText: false,
                  autovalidateMode:
                  AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.text,
                  autocorrect: true,
                  enableSuggestions: true,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  decoration:  const InputDecoration(
                    floatingLabelBehavior:
                    FloatingLabelBehavior.never,
                    contentPadding: EdgeInsets.only(
                        top: 0, left: 10, right: 10),
                    border: UnderlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'fulName',
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.black),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  obscureText: false,
                  autovalidateMode:
                  AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.text,
                  autocorrect: true,
                  enableSuggestions: true,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  decoration:  const InputDecoration(
                    floatingLabelBehavior:
                    FloatingLabelBehavior.never,
                    contentPadding: EdgeInsets.only(
                        top: 0, left: 10, right: 10),
                    border: UnderlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'UserName',
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.black),
                  )
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        obscureText: false,
                        autovalidateMode:
                        AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        autocorrect: true,
                        enableSuggestions: true,
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                        decoration:  const InputDecoration(
                          floatingLabelBehavior:
                          FloatingLabelBehavior.never,
                          contentPadding: EdgeInsets.only(
                              top: 0, left: 10, right: 10),
                          border: UnderlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: '+234',
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.black),
                        )
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        obscureText: false,
                        autovalidateMode:
                        AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.number,
                        autocorrect: true,
                        enableSuggestions: true,
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                        decoration:  const InputDecoration(
                          floatingLabelBehavior:
                          FloatingLabelBehavior.never,
                          contentPadding: EdgeInsets.only(
                              top: 0, left: 10, right: 10),
                          border: UnderlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Your Phone',
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle:  TextStyle(color: Colors.black),
                        )
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  obscureText: false,
                  autovalidateMode:
                  AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: true,
                  enableSuggestions: true,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  decoration:  const InputDecoration(
                    floatingLabelBehavior:
                    FloatingLabelBehavior.never,
                    contentPadding: EdgeInsets.only(
                        top: 0, left: 10, right: 10),
                    border: UnderlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'email',
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.black),
                  )
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        obscureText: false,
                        autovalidateMode:
                        AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.text,
                        autocorrect: true,
                        enableSuggestions: true,
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                        decoration:  const InputDecoration(
                          floatingLabelBehavior:
                          FloatingLabelBehavior.never,
                          contentPadding: EdgeInsets.only(
                              top: 0, left: 10, right: 10),
                          border: UnderlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Date of Birth',
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.black),
                        )
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        obscureText: false,
                        autovalidateMode:
                        AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.number,
                        autocorrect: true,
                        enableSuggestions: true,
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                        decoration:  const InputDecoration(
                          floatingLabelBehavior:
                          FloatingLabelBehavior.never,
                          contentPadding: EdgeInsets.only(
                              top: 0, left: 10, right: 10),
                          border: UnderlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Gender',
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle:  TextStyle(color: Colors.black),
                        )
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  obscureText: false,
                  autovalidateMode:
                  AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.text,
                  autocorrect: true,
                  enableSuggestions: true,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  decoration:  const InputDecoration(
                    floatingLabelBehavior:
                    FloatingLabelBehavior.never,
                    contentPadding: EdgeInsets.only(
                        top: 0, left: 10, right: 10),
                    border: UnderlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Relationship Status',
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle:  TextStyle(color: Colors.black),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  obscureText: false,
                  autovalidateMode:
                  AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.text,
                  autocorrect: true,
                  enableSuggestions: true,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  decoration:  const InputDecoration(
                    floatingLabelBehavior:
                    FloatingLabelBehavior.never,
                    contentPadding: EdgeInsets.only(
                        top: 0, left: 10, right: 10),
                    border: UnderlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'interest',
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle:  TextStyle(color: Colors.black),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  obscureText: false,
                  autovalidateMode:
                  AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: true,
                  enableSuggestions: true,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  decoration:  const InputDecoration(
                    floatingLabelBehavior:
                    FloatingLabelBehavior.never,
                    contentPadding: EdgeInsets.only(
                        top: 0, left: 10, right: 10),
                    border: UnderlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Email',
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.black),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autovalidateMode:
                AutovalidateMode.onUserInteraction,
                style: GoogleFonts.roboto(
                  // textStyle: textTheme.bodyText1,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
                decoration: InputDecoration(
                  focusedBorder: const UnderlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(),
                  ),
                  contentPadding: const EdgeInsets.only(
                      top: 0, left: 10, right: 10),
                  border: const UnderlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () => setState(() {

                    }),
                    child: const Icon(Icons.visibility_off_outlined,),
                  ),
                  labelText: 'Password',
                  alignLabelWithHint: true,
                  floatingLabelBehavior:
                  FloatingLabelBehavior.never,
                  hintStyle: const TextStyle(color: Colors.white),
                  labelStyle: const TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 100,right: 100,top: 15,bottom: 10),
              child:  GestureDetector(
                child:   Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:  Colors.yellow,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child:    const Padding(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 15,bottom: 15),
                      child:    Text("Create Account",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w700,
                          fontFamily: "Open sans",fontStyle: FontStyle.normal,
                        ),
                      ),
                    )
                ),
              ),
            ),
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.black
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.roboto(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: Colors.blue
                        ),
                      ),
                    )
                  ],
                ))
          ],
        )
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Colors.white,
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Padding(padding: EdgeInsets.only(left: 14,right: 13,top: 135),
              child: Text(
                'Welcome back!',
                style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.w700,
                  fontFamily: "Open sans",fontStyle: FontStyle.normal,
                ),

              ),
            ),
            const Padding(padding: EdgeInsets.only(left:14,right: 15,top: 23),
              child: Text(
                'Hi, Kindly login to continue celebration',
                style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400,
                  fontFamily: "Open sans",fontStyle: FontStyle.normal,
                ),

              ),
            ),

            Padding(
              padding:const EdgeInsets.only(left: 8,right: 8,top: 50),
              child: TextFormField(
                  obscureText: false,
                  autovalidateMode:
                  AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: true,
                  enableSuggestions: true,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                  decoration:  const InputDecoration(
                    floatingLabelBehavior:
                    FloatingLabelBehavior.never,
                    contentPadding: EdgeInsets.only(
                        top: 0, left: 10, right: 10),
                    border: UnderlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: 'Email',
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.black),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autovalidateMode:
                AutovalidateMode.onUserInteraction,
                style: GoogleFonts.roboto(
                  // textStyle: textTheme.bodyText1,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
                decoration: InputDecoration(
                  focusedBorder: const UnderlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(),
                  ),
                  contentPadding: const EdgeInsets.only(
                      top: 0, left: 10, right: 10),
                  border: const UnderlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () => setState(() {

                    }),
                    child: const Icon(Icons.visibility_off_outlined,),
                  ),
                  labelText: 'Password',
                  alignLabelWithHint: true,
                  floatingLabelBehavior:
                  FloatingLabelBehavior.never,
                  hintStyle: const TextStyle(color: Colors.white),
                  labelStyle: const TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 100,right: 100,top: 85,bottom: 15),
              child:  GestureDetector(
                child:   Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:  Colors.yellow,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child:    const Padding(
                      padding: EdgeInsets.only(left: 10,right: 10,top: 15,bottom: 15),
                      child:    Text("Let’s Celebrate",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w700,
                          fontFamily: "Open sans",fontStyle: FontStyle.normal,
                        ),
                      ),
                    )
                ),
              ),
            ),
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.black
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterPage()));
                      },
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: Colors.blue
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ClassWorkPage(title: '',)));
                      },
                      child: Text(
                        "Quote Page",
                        style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: Colors.blue
                        ),
                      ),
                    )
                  ],
                ))
          ],
        )
    );
  }
}
