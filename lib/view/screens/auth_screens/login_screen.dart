import 'package:financialanalysis/global/common/toast.dart';
import 'package:financialanalysis/global/fade_in.dart';
import 'package:financialanalysis/helpers/navigation_helper.dart';
import 'package:financialanalysis/services/auth_services/firbase_auth_services.dart';
import 'package:financialanalysis/utils/colors/primary_colors.dart';
import 'package:financialanalysis/view/screens/auth_screens/signup_screen.dart';
import 'package:financialanalysis/view/screens/home_screens/home_screen.dart';
import 'package:financialanalysis/view/screens/home_screens/main_screen.dart';
import 'package:financialanalysis/view/widgets/customised_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {


  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  bool _isValidEmail(String value) {
    final emailRegExp = RegExp(
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$');
    return emailRegExp.hasMatch(value);
  }

   bool _isSigning = false;
  final FirebaseAuthService _auth = FirebaseAuthService();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
 

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    bool _obscureText = true;

    return Scaffold(
      backgroundColor: PrimaryColors.darkblue,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 315,
                width: 300,
                child: Image.asset("assets/images/fynalica_logo.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    FadeInSlide(
                      duration: 2.2,
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FadeInSlide(
                        duration: 1.4,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                          controller: emailController,
                          enabled: true,
                          decoration: InputDecoration(
                            filled: false,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            prefixIcon:
                                Icon(Icons.email, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            labelText: 'Email',
                            labelStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          style:
                              TextStyle(color: Colors.white, fontSize: 12),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email cannot be empty";
                            } else if (!_isValidEmail(value)) {
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
                        child: StatefulBuilder(
                          builder: (context, setState) {
                            return TextFormField(
                              keyboardType: TextInputType.text,
                              obscureText: _obscureText,
                              controller: passwordController,
                              enabled: true,
                              decoration: InputDecoration(
                                filled: false,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                prefixIcon:
                                    Icon(Icons.lock, color: Colors.grey),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    color: Colors.grey, fontSize: 12),
                              ),
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 12),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password is required';
                                } else if (value.length < 6) {
                                  return 'Password must be at least 6 characters long';
                                } else {
                                  return null;
                                }
                              },
                            );
                          },
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                    FadeInSlide(
                      duration: 1.8,
                      child: CustomButton(
                      
                          btnColor: Colors.white,
                          width: screenWidth,
                          borderRadius: 10,
                          child: Text(
                            'Log In',
                            style: TextStyle(color: PrimaryColors.darkblue, fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                          onTap: () async {
                            _signIn();
                            // showDialog(
                            //     context: context,
                            //     barrierDismissible: false,
                            //     builder: (context) {
                            //       return const CustomLoader(
                            //           message: 'Logging in');
                            //     });
                         
                                // Helpers.temporaryNavigator(context, myHomePage());
                            // await AuthServices.login(context: context, emailAddress: emailController.text.trim(), password: passwordController.text.trim());
                          }),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FadeInSlide(
                      duration: 2.0,
                      child: GestureDetector(
                        // onTap: () => Helpers.temporaryNavigator(context, ForgotPasswordScreen()),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white),
                              children: [
                                TextSpan(
                                    text: "Forgot Password?",
                                    style: TextStyle(
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FadeInSlide(
                      duration: 2.8,
                      child: GestureDetector(
                        onTap: (){
                          Helpers.temporaryNavigator(context, signupPage());
                        },
                        // onTap: () => Helpers.permanentNavigator(
                            // context, const SignupPage()),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: Colors.white),
                              children: [
                                const TextSpan(text: "Don't have an Account? "),
                                TextSpan(
                                    text: " Register",
                                    style: GoogleFonts.poppins(
                                        color: PrimaryColors.fedblue,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                      ),
                    ),
                  ],
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
             Colors.white.withOpacity(0.9)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }


  void _signIn() async {
    setState(() {
      _isSigning = true;
    });

    String email = emailController.text;
    String password = passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    setState(() {
      _isSigning = false;
    });

    if (user != null) {
      showToast(message: "User is successfully signed in");
        Helpers.temporaryNavigator(context, myHomePage());
    } else {
      showToast(message: "some error occured");
    }
  }


//   _signInWithGoogle()async{

//     final GoogleSignIn _googleSignIn = GoogleSignIn();

//     try {

//       final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

//       if(googleSignInAccount != null ){
//         final GoogleSignInAuthentication googleSignInAuthentication = await
//         googleSignInAccount.authentication;

//         final AuthCredential credential = GoogleAuthProvider.credential(
//           idToken: googleSignInAuthentication.idToken,
//           accessToken: googleSignInAuthentication.accessToken,
//         );

//         await _firebaseAuth.signInWithCredential(credential);
//         Navigator.pushNamed(context, "/home");
//       }

//     }catch(e) {
// showToast(message: "some error occured $e");
//     }


//   }











}