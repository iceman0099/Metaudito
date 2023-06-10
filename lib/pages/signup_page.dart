import 'package:finalproject/utensils/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Signpage extends StatefulWidget {
  const Signpage({super.key});

  @override
  State<Signpage> createState() => _SignpageState();
}

class _SignpageState extends State<Signpage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Metaudito",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                )),
            Text("        Future of audits",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Re-enter Password",
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
                    child: Text("Register"),
                  )
                ],
              ),
            ),



          ],
        ));
  }
}
