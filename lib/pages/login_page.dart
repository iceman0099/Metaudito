import 'package:finalproject/utensils/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [

            Image.asset(
              "assets/123.png",
              fit: BoxFit.fitWidth,
              height: 300,

            ),
            Text("Metaudito",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                )),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeroute);
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text("Login"),
                  )
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New to Metaudito?",
                  style: TextStyle(
                    fontSize: 19
                  ),
                ),
                TextButton(onPressed: (){
                  Navigator.pushNamed(context, MyRoutes.signroute);
                }, child: Text("Sign Up",style: TextStyle(color: Colors.blue,fontSize: 19),))
              ],
            )

          ],
        ));
  }
}
