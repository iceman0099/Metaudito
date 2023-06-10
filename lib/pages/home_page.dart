import 'package:finalproject/utensils/routes.dart';
import 'package:flutter/material.dart';



class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(

      body: Center(
        child: Container(
          width: double.infinity,

          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset(
              "assets/logo.png",
              fit: BoxFit.fitHeight,
              height: 300,
            ),
              SizedBox(
                height: 80.0,
              ),



              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, MyRoutes.loginroute);

              },

                  style: TextButton.styleFrom(minimumSize: Size(100, 38)),
                  child: Text("Get Started"))
            ],
          ),

        ),
      ),


    );
  }
}
