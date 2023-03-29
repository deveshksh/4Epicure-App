import 'package:flutter/material.dart';

import '../utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //controllers
  final emailController =
      TextEditingController(); //Anything that isn't known at compile time should be final over const.
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //dynamic sizes
    double sHeight = MediaQuery.of(context).size.height;
    double sWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Center(
        // understand this part thoroughly
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: sHeight * 0.03,
            ),

            // back icon
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                ),
              ],
            ),

            SizedBox(
              height: sHeight * 0.03,
            ),

            // Welcome Back text
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: SizedBox(
                height: sHeight * 0.2,
                child: const Text(
                  "Welcome back! Glad to see you, Again!",
                  style: TextStyle(
                    color: blackish,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // TextField-email
            Container(
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(11),
                  topRight: Radius.circular(11),
                  bottomLeft: Radius.circular(11),
                  bottomRight: Radius.circular(11),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.3499999940395355),
                      offset: Offset(16, 4),
                      blurRadius: 5)
                ],
                gradient: LinearGradient(
                    begin: Alignment(0.9848392605781555, 0.0222220029681921),
                    end: Alignment(-0.0222220029681921, 0.040866103023290634),
                    colors: [
                      Color.fromRGBO(239, 239, 239, 1),
                      Color.fromRGBO(255, 255, 255, 0.6700000166893005),
                      Color.fromRGBO(239, 239, 239, 0.6700000166893005),
                      Color.fromRGBO(255, 255, 255, 0)
                    ]),
              ),
              child: SizedBox(
                height: sHeight * 0.1,
                width: sWidth * 0.9,
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: "Enter your email",
                  ),
                ),
              ),
            ),
            // Figma Flutter Generator Rectangle174Widget - RECTANGLE
            // Container(
            //   width: 331,
            //   height: 56,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(11),
            //       topRight: Radius.circular(11),
            //       bottomLeft: Radius.circular(11),
            //       bottomRight: Radius.circular(11),
            //     ),
            //     boxShadow: [
            //       BoxShadow(
            //           color: Color.fromRGBO(0, 0, 0, 0.3499999940395355),
            //           offset: Offset(16, 4),
            //           blurRadius: 5)
            //     ],
            //     gradient: LinearGradient(
            //         begin: Alignment(0.9848392605781555, 0.0222220029681921),
            //         end: Alignment(-0.0222220029681921, 0.040866103023290634),
            //         colors: [
            //           Color.fromRGBO(239, 239, 239, 1),
            //           Color.fromRGBO(255, 255, 255, 0.6700000166893005),
            //           Color.fromRGBO(239, 239, 239, 0.6700000166893005),
            //           Color.fromRGBO(255, 255, 255, 0)
            //         ]),
            //   ),
            //   child: Text(
            //     'Enter your email',
            //     textAlign: TextAlign.left,
            //     style: TextStyle(
            //         color: Color.fromRGBO(255, 255, 255, 1),
            //         fontFamily: 'Urbanist',
            //         fontSize: 18,
            //         letterSpacing:
            //             0 /*percentages not used in flutter. defaulting to zero*/,
            //         fontWeight: FontWeight.normal,
            //         height: 1.5 /*PERCENT not supported*/
            //         ),
            //   ),
            // ),

            // Maybe Used for spacing but now i think the padding of the text field is handling this
            // SizedBox(
            //   height: sHeight*0.05,
            // ),

            // Textfield-password
            SizedBox(
              height: sHeight * 0.1,
              width: sWidth * 0.9,
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Enter your password",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                  ),
                ),
              ),
            ),

            // Forgot? Password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () => {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: darkGray),
                      )),
                ),
              ],
            ),

            //Login Button
            Container(
              height: sHeight * 0.1,
              width: sWidth * 0.9,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        blackish)), // remember to give the color in this format otherwise null safety error will be prompted
                child: const Text(
                  "Login",
                  style: TextStyle(color: darkOrange),
                ),
              ),
            ),

            //Or login with Sized Box
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: sHeight * 0.05,
                  child: const Text("----------- Or login With ----------"),
                ),
              ],
            ),

            // Login with google Button
            Container(
              height: sHeight * 0.08,
              width: sWidth * 0.35,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors
                        .white)), // remember to give the color in this format otherwise null safety error will be prompted
                child: const Icon(
                  Icons.login,
                  color: blackish,
                ),
              ),
            ),

            //Dont have an account?Register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Dont have an account?"),
                TextButton(
                    onPressed: () => {},
                    child: const Text(
                      "Register now?",
                      style: TextStyle(color: darkGray),
                    )),
              ],
            )
          ],
        ),
      )),
    );
  }
}
