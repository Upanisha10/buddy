import 'package:buddy/request_page.dart';
import 'package:buddy/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:buddy/messages_pages.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffffef9),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(200),bottomLeft: Radius.circular(200)),
                      color: Color.fromRGBO(140, 130, 223,1).withOpacity(0.7),
                    ),
                  ),
                  Positioned(child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(280),
                          border: Border.all(color: Colors.white,width:3),
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(130),
                            color: Colors.white
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(image: NetworkImage('https://cdn4.sharechat.com/compressed_gm_40_img_451755_a39d53c_1688708446911_sc.jpg?tenant=sc&referrer=pwa-sharechat-service&f=911_sc.jpg',),fit: BoxFit.cover)
                        ),
                      ),
          
                    ],
                  ),
                    bottom: -50,
                    left:0,
                    right:0,
                  ),
          
                ],
              ),
              SizedBox(height:50),
              Text("Suneeta",style: TextStyle(fontSize: 22,color: Colors.black),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on,color: Color.fromRGBO(140, 130, 223,1).withOpacity(0.7)),
                  SizedBox(width:10),
                  Text("Rajahmundry",style: TextStyle(fontSize: 18,color: Color.fromRGBO(140, 130, 223,1).withOpacity(0.7)))
                ],
              ),
              SizedBox(height:20),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Messagespages()));
                },
                child:Padding(padding: EdgeInsets.only(left:30),child:Row(
                  children: [
                    Container(
                      height:50,
                      width:50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(140, 130, 223,1).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Icon(Icons.message_rounded,color:Color.fromRGBO(140, 130, 223,1).withOpacity(0.8) ,),
                    ),
                    SizedBox(width:30),
                    Text("Messages",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)
                  ],
                ),),),
              SizedBox(height:15),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LikedPage()));
                },
                child:Padding(padding: EdgeInsets.only(left:30),child:Row(
                  children: [
                    Container(
                      height:50,
                      width:50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(140, 130, 223,1).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Icon(Icons.favorite_rounded,color:Color.fromRGBO(140, 130, 223,1).withOpacity(0.8) ,),
                    ),
                    SizedBox(width:30),
                    Text("Liked buddies",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)
                  ],
                ),),),
              SizedBox(height:15),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Track()));
                },
                child:Padding(padding: EdgeInsets.only(left:30),child:Row(
          
                  children: [
                    Container(
                      height:50,
                      width:50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(140, 130, 223,1).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Icon(Icons.location_on_outlined,color:Color.fromRGBO(140, 130, 223,1).withOpacity(0.8) ,),
                    ),
                    SizedBox(width:30),
                    Text("Edit address",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)
                  ],
                ),),),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Trackpage()));
                },
                child:Padding(padding: EdgeInsets.only(left:30),child:Row(
                  children: [
                    Container(
                      height:50,
                      width:50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(140, 130, 223,1).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Icon(Icons.directions_bike,color:Color.fromRGBO(140, 130, 223,1).withOpacity(0.8) ,),
                    ),
                    SizedBox(width:30),
                    Text("Track your buddies",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)
                  ],
                ),),),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
                },
                child: Padding(padding: EdgeInsets.only(left:30),child:Row(
                  children: [
                    Container(
                      height:50,
                      width:50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(140, 130, 223,1).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Icon(Icons.settings,color:Color.fromRGBO(140, 130, 223,1).withOpacity(0.8) ,),
                    ),
                    SizedBox(width:30),
                    Text("Settings",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)
                  ],
                )
                ),
              ),
          
              SizedBox(height: 15,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestPage()));
                },
                child: Padding(padding: EdgeInsets.only(left:30),child:Row(
                  children: [
                    Container(
                      height:50,
                      width:50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(140, 130, 223,1).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Icon(Icons.request_page,color:Color.fromRGBO(140, 130, 223,1).withOpacity(0.8) ,),
                    ),
                    SizedBox(width:30),
                    Text("Requests",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)
                  ],
                )
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height:45,
                  width:150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(140, 130, 223,1).withOpacity(0.7),
                  ),
                  child:Center(child: Text("Logout",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),),
                ),
              )
          
            ],
          
          ),
        )
    );
  }
}