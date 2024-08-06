import 'package:buddy/adopt_page.dart';
import 'package:buddy/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:buddy/home_page.dart';
class Animalviewpage extends StatefulWidget {
  final Map<dynamic, dynamic>petInfo;
  const Animalviewpage({required this.petInfo,super.key,});
  @override
  State<Animalviewpage> createState() => _AnimalviewpageState();
}
class _AnimalviewpageState extends State<Animalviewpage> {
  @override
  Widget build(BuildContext context) {
    final petInfo = widget.petInfo;
    final ownUrl = petInfo['ownurl'] ?? 'https://i.pinimg.com/564x/5a/54/cf/5a54cfdb6320b05029b8fafb6fdb5f4e.jpg';
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(width:10),
                Container(
                  height:120 ,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
                  ),
                ),
                Positioned(child: Row(
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.pop(context);
                      },
                      child:Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Icon(Icons.arrow_back,size:30),
                      ),),
                    SizedBox(width:MediaQuery.sizeOf(context).width-130),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Icon(Icons.favorite_rounded,color: Colors.red,size:30),
                    )
                  ],
                ),

                    left: 10,
                    right:10,
                    top:30
                ),
                Positioned(child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(280),
                        border: Border.all(color: Color.fromRGBO(135, 76, 204,1),),
                      ),
                    ),
                    Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                          color: Color.fromRGBO(135, 76, 204,1).withOpacity(0.7),
                        )
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          image: DecorationImage(image: NetworkImage(widget.petInfo['url'],),fit: BoxFit.cover)
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
            Text(widget.petInfo["Name"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black),),
            Text(widget.petInfo["Address"],style: TextStyle(fontSize: 18,color: Colors.black),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 80,
                    width: MediaQuery.sizeOf(context).width / 3 - 15,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(135, 76, 204,1).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(11),
                    child:Center(
                      child: Column(
                        children: [
                          Text(widget.petInfo["Gender"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                          Text("Gender",style: TextStyle(fontSize: 18,color: Colors.white),),
                        ],
                      ),
                    )

                ),
                Container(
                    height: 80,
                    width: MediaQuery.sizeOf(context).width / 3 - 15,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(135, 76, 204,1).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(11),
                    child:Center(
                      child: Column(
                        children: [
                          Text(widget.petInfo["Weight"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                          Text("weight",style: TextStyle(fontSize: 18,color: Colors.white),),
                        ],
                      ),
                    )
                ),
                Container(
                    height: 80,
                    width: MediaQuery.sizeOf(context).width / 3 - 15,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(135, 76, 204,1).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(11),
                    child:Center(
                      child: Column(
                        children: [
                          Text(widget.petInfo["Age"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                          Text("Age",style: TextStyle(fontSize: 18,color: Colors.white),),
                        ],
                      ),
                    )
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text("About ${widget.petInfo["Name"]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left:8.0,right:8),
              child: Text(widget.petInfo["About"],
                style: TextStyle(color: Colors.blueGrey,fontSize: 15),textAlign: TextAlign.center,),
            ),
            SizedBox(height:50),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                    padding: EdgeInsets.only(left:20),
                    height:140,
                    width:MediaQuery.sizeOf(context).width-60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(135, 76, 204,1).withOpacity(0.5),
                    ),
                    child:Center(child: Text(widget.petInfo["ReasonForGiving"],style: TextStyle(color: Colors.black,fontSize: 16),),)
                ),
                Positioned(left:30,
                    top:-30,child:Container(
                      height:40,
                      width:MediaQuery.sizeOf(context).width-150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color.fromRGBO(75, 0, 135, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(widget.petInfo["Owner"],style: TextStyle(fontSize: 17,color: Colors.white),),
                        ],
                      ),
                    )
                ),
                Positioned(left:-10,
                    top:-40,child: Container(
                      height:70,
                      width:70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(image: NetworkImage(ownUrl,),fit: BoxFit.cover)
                      ),

                    )
                ),
              ],
            ),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage(ownerName: widget.petInfo['Owner'], ownerUrl: widget.petInfo['ownurl'])));
                  },
                  child: Container(
                    height:50,
                    width:MediaQuery.sizeOf(context).width/5+10,
                    decoration: BoxDecoration(
                      color: Color(0xff378CE7).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.message_rounded,color: Colors.white,size:27),
                  ),
                ),
                SizedBox(width:10),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AdoptionForm()));
                  },
                  child: Container(
                      height:50,
                      width:MediaQuery.sizeOf(context).width/3+30,
                      decoration: BoxDecoration(
                        color: Color(0xff378CE7).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text("Adopt",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)))
                  ),
                ),
              ],
            )
          ]
      ),);
  }
}