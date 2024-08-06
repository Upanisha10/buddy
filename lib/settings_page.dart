import 'package:flutter/material.dart';
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(padding: EdgeInsets.only(left:70,right:0),
          child:Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Color.fromRGBO(135, 76, 204, 1),
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromRGBO(135, 76, 204, 1),
                    fontWeight: FontWeight.bold,
                  ),),]

          ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:25,bottom:60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height:50,
              width:MediaQuery.sizeOf(context).width-50,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,

                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.monetization_on_outlined,color: Colors.black,size: 30,),
                    Text("Go Premium Now",style: TextStyle(fontSize: 18),),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),

            Container(
              height:50,
              width:MediaQuery.sizeOf(context).width-50,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.settings_display,color: Colors.black,size: 30,),
                    Text("Display Settings",style: TextStyle(fontSize: 18),),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),

            Container(
              height:50,
              width:MediaQuery.sizeOf(context).width-50,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,

                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.notifications,color: Colors.black,size: 30,),
                    Text("Notification Settings",style: TextStyle(fontSize: 18),),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),

            Container(
              height:50,
              width:MediaQuery.sizeOf(context).width-50,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,

                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.format_align_justify_outlined,color: Colors.black,size: 30,),
                    Text("Forms of service",style: TextStyle(fontSize: 18),),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),

            Container(
              height:50,
              width:MediaQuery.sizeOf(context).width-50,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,

                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.privacy_tip_outlined,color: Colors.black,size: 30,),
                    Text("Privacy Settings",style: TextStyle(fontSize: 18),),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),

            Container(
              height:50,
              width:MediaQuery.sizeOf(context).width-50,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,

                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.touch_app_outlined,color: Colors.black,size: 30,),
                    Text("About App",style: TextStyle(fontSize: 18),),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),

            Container(
              height:50,
              width:MediaQuery.sizeOf(context).width-50,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,

                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.delete,color: Colors.black,size: 30,),
                    Text("Clear Cache",style: TextStyle(fontSize: 18),),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ),

            Container(
              height:50,
              width:MediaQuery.sizeOf(context).width-50,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,

                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.perm_device_information,color: Colors.black,size: 30,),
                    Text("Copyright info",style: TextStyle(fontSize: 18),),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}