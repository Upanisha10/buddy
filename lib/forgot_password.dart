import 'package:buddy/otp_verification.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Buddy",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 36,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Lottie animation from network
            Lottie.network(
              'https://lottie.host/c45e9d3f-8809-4f3e-baee-a5d697de91b8/PfQ9aTuD7G.json', // Replace with your actual URL
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              "Forgot Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(140, 130, 223,1),
                fontSize: 25,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "We will send a code to your number.",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText: 'Enter your number',
                  ),
                ),
              ),
            ),
            SizedBox(height:15),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpVerificationPage()));
              },
              child: Container(
                  height:60,
                  width:MediaQuery.sizeOf(context).width-40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromRGBO(140, 130, 223,1)
                  ),
                  child:Center(child:Text("Send OTP",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),))
              ),
            ),
            SizedBox(height: 30,),


          ],
        ),
      ),
    );
  }
}