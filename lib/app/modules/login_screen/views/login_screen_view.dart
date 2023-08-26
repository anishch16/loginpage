import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body:GestureDetector(
        onTap: () {
      // Dismiss the keyboard when tapping outside of text fields
      FocusScope.of(context).unfocus();
    },
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Container(
                    child: Center(
                        child: Image.asset('assets/images/logo.png')
                    ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'LogIn Page Design',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                    ),
                    SizedBox(height: 8), // Add spacing between title and subtitle
                    Text(
                      'Please input your details',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Email Address:',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            decoration: TextDecoration.underline),
                      ),
                      SizedBox(height: 15,),

                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(hintText: 'Email or Username',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            decoration: TextDecoration.underline),
                      ),
                      SizedBox(height: 15,),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25,),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      controller.handleEmailSignIn(
                        emailController.text,
                        passwordController.text,
                      );
                    },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green, // Text color
                        textStyle: TextStyle(fontSize: 18), // Text style
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text('Log in'),

                  ),
                ),
                SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Center(
                  child: const Text(
                    '---Click here---',
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ),
                const SizedBox(height: 10,),
                Center(
                  child: ElevatedButton(
                    onPressed: controller.handleGoogleSignIn,
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.lightGreen,
                      textStyle: TextStyle(fontSize: 18),
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      elevation: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'http://pngimg.com/uploads/google/google_PNG19635.png',
                          height: 20, // Adjust the height of the logo
                          width: 20,  // Adjust the width of the logo
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 4), // Add some spacing between the logo and text
                        Text('Sign in with Google'),
                      ],
                    ),
                  )


                ),
              ],
            ),
          ),
        ),
       ),
      ),
    );
  }
}
