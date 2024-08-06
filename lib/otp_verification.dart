import 'package:buddy/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';
class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  int countdown = 30;

  bool isEnabled = false;
  Timer? timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
  void startTimer()
  {
    timer = Timer(Duration(seconds: 1), (){
      setState(() {
        isEnabled = false;
        if(countdown == 0)
        {
          isEnabled = true;
          countdown = 30;
          timer?.cancel();
        }
        else
        {
          countdown--;
          startTimer();
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
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
              'https://lottie.host/305138c6-7bc7-4b03-a4f5-ddd5caf7099a/f4mamq01hk.json', // Replace with your actual URL
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              "Verification Code",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(140, 130, 223,1),
                fontSize: 25,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Enter the code we have sent to your phone",
              style: TextStyle(color: Colors.black, fontSize: 18),
              textAlign: TextAlign.center
              ,
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
                    hintText: 'Enter your OTP',
                  ),
                ),
              ),
            ),
            SizedBox(height:15),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AllScreens()));
              },
              child: Container(
                  height:60,
                  width:MediaQuery.sizeOf(context).width-40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromRGBO(140, 130, 223,1)
                  ),
                  child:Center(child:Text("Verify Code",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),))
              ),
            ),

            SizedBox(height: 10,),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                border: Border.all(color: Color.fromRGBO(140, 130, 223,1))
              ),
              child: Center(child: Text('$countdown s', style: TextStyle(color: Color.fromRGBO(140, 130, 223,1), fontSize: 16, fontWeight: FontWeight.bold),),),
            ),

            SizedBox(height: 10,),
            SizedBox(
              width: 120,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  startTimer();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color:Color.fromRGBO(140, 130, 223,1), width: 2), // Add border here
                  ),
                  backgroundColor: isEnabled? Color.fromRGBO(140, 130, 223,1) : Colors.white,
                ),
                child: Text(
                  'Resend',
                  style: TextStyle(color: isEnabled? Colors.white : Color.fromRGBO(140, 130, 223,1), fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
