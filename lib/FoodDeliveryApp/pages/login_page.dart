import 'package:dealdox_integrated/FoodDeliveryApp/components/my_button.dart';
import 'package:dealdox_integrated/FoodDeliveryApp/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/widgets/splash.dart';
import '../components/my_textfield.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textController = TextEditingController();
  TextEditingController passController = TextEditingController();

  Future<void> login() async {
    /*
    fill authetication
     */
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            backgroundColor: Theme.of(context).colorScheme.tertiary,
            title: Text(
              "Succesfully Signed in",
              style: GoogleFonts.roboto(color: Colors.green),
            ),
          );
        });

    await Future.delayed(Duration(seconds: 2));
    Navigator.pop(context);
    //naviagate to home page
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const FHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded, size: 100,

              ///In many design systems, the inverse primary color is used for
              ///elements like text or icons that need to stand out against the primary
              ///background color. It's typically a color that contrasts well with the
              /// primary color.
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            //message app slogan
            Text(
              "Food Delivery app",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //email textfield
            MyTextField(
                controller: textController,
                hintText: "Enter your Gmail",
                obscureText: false),
            const SizedBox(
              height: 10,
            ),
            //password textfield
            MyTextField(
                controller: passController,
                hintText: "Enter your password",
                obscureText: true),
            const SizedBox(
              height: 10,
            ),
            //sign in button
            MyButton(onTap: login, text: "Sign in"),
            const SizedBox(
              height: 10,
            ),
            //not a memeber? resgister now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a Memeber?",
                  style: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap:widget.onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
