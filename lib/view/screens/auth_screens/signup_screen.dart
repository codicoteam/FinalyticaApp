import 'package:financialanalysis/global/common/toast.dart';
import 'package:financialanalysis/global/fade_in.dart';
import 'package:financialanalysis/helpers/navigation_helper.dart';
import 'package:financialanalysis/services/auth_services/firbase_auth_services.dart';
import 'package:financialanalysis/utils/colors/primary_colors.dart';
import 'package:financialanalysis/view/screens/auth_screens/login_screen.dart';
import 'package:financialanalysis/view/screens/home_screens/home_screen.dart';
import 'package:financialanalysis/view/screens/home_screens/main_screen.dart';
import 'package:financialanalysis/view/widgets/customer_loader.dart';
import 'package:financialanalysis/view/widgets/customised_button.dart';
import 'package:financialanalysis/view/widgets/customised_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class signupPage extends StatefulWidget {
  const signupPage({super.key});
  @override
  State<signupPage> createState() => _signupPageState();
}
class _signupPageState extends State<signupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController idNumberController = TextEditingController();
  bool isSigningUp = false;
    final FirebaseAuthService _auth = FirebaseAuthService();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();
  bool _isValidEmail(String value) {
    // Use a regular expression to check if the email format is valid
    final emailRegExp = RegExp(
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$');
    return emailRegExp.hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: PrimaryColors.darkblue,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 270,
                  width: 300,
                  child: Image.asset("assets/images/fynalica_logo.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      FadeInSlide(
                        duration: 2.2,
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FadeInSlide(
                        duration: 1.4,
                        child: CustomTextField(
                          validator: 'first name cannot be empty',
                          controller: firstnameController,
                          labelText: 'First Name',
                          prefixIcon: const Icon(
                            Icons.person_outline,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                  
                      FadeInSlide(
                          duration: 1.4,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            obscureText: false,
                            controller: idNumberController,
                            enabled: true,
                            decoration: InputDecoration(
                              filled: false,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              labelText: 'Id Number',
                              labelStyle: TextStyle(
                                  color: Colors.grey, fontSize: 12),
                            ),
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Id Number cannot be empty";
                              } else {
                                return null;
                              }
                            },
                          )),
                      
                      const SizedBox(
                        height: 8,
                      ),
                      FadeInSlide(
                          duration: 1.4,
                          child: TextFormField(
                            keyboardType: TextInputType
                                .emailAddress, // Set keyboardType to accept email addresses
                            obscureText: false,
                            controller: emailController,
                            enabled: true,
                            decoration: InputDecoration(
                              filled: false,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              prefixIcon: Icon(Icons.email,
                                  color:Colors.grey), // Change the prefixIcon to an email icon
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              labelText:
                                  'Email', // Change the labelText to 'Email'
                              labelStyle: TextStyle(
                                  color: Colors.grey, fontSize: 12),
                            ),
                            style:
                                TextStyle(color: Colors.black, fontSize: 12),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Email cannot be empty";
                              } else if (!_isValidEmail(value)) {
                                // Add email validation using a helper function
                                return "Please enter a valid email address";
                              } else {
                                return null;
                              }
                            },
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      FadeInSlide(
                        duration: 1.6,
                        child: CustomTextField(
                          validator: "password cannot be empty",
                          controller: passwordController,
                          obscureText: true,
                          labelText: 'Password',
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                     SizedBox(
                        height: 24,
                      ),
                      FadeInSlide(
                        duration: 1.8,
                        child: CustomButton(
                            btnColor: Colors.white,
                            width: screenWidth,
                            borderRadius: 10,
                            child: Text(
                              'sign up',
                              style: TextStyle(color:PrimaryColors.darkblue, fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                            onTap: () async {
                              if (_formKey.currentState!.validate()) {
                                showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (context) {
                                      return const CustomLoader(
                                          message: 'Loading ...');
                                    });
                              }
                          
                            _signUp();
                            // showDialog(
                            //     context: context,
                            //     barrierDismissible: false,
                            //     builder: (context) {
                            //       return const CustomLoader(
                            //           message: 'Logging in');
                            //     });
                         
                                // Helpers.temporaryNavigator(context, myHomePage());
                            // await AuthServices.login(context: context, emailAddress: emailController.text.trim(), password: passwordController.text.trim());

                              // await AuthServices.login(context: context, emailAddress: emailController.text.trim(), password: passwordController.text.trim());
                            }),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      FadeInSlide(
                        duration: 2.8,
                        child: GestureDetector(
                          onTap: () => Helpers.permanentNavigator(
                              context,  LoginPage()),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.white),
                                children: [
                                  const TextSpan(
                                      text: "Don't have an Account? "),
                                  TextSpan(
                                      text: " Login",
                                      style: GoogleFonts.poppins(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold))
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
         
            ],
          ),
        ),
      ),
       bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0),
             Colors.white.withOpacity(0.6)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),

    );
  }


  void _signUp() async {

setState(() {
  isSigningUp = true;
});

    String username = firstnameController.text;
    String email = emailController.text;
        String idnumber = idNumberController.text;

    String password = passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password, idnumber, username);

setState(() {
  isSigningUp = false;
});
    if (user != null) {
      showToast(message: "User is successfully created");
       Helpers.temporaryNavigator(context, myHomePage());
    } else {
      showToast(message: "Some error happend");
    }
  }
}