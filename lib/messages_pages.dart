import 'package:buddy/home_page.dart';
import 'package:flutter/material.dart';
import 'package:buddy/main.dart';

final List<Map<String,dynamic>> list=[
  {'Name': "Upanisha", 'Message': "Daisy is sweet.", 'url': 'https://i.pinimg.com/474x/1f/b8/0a/1fb80a951ed9a54681b7a1b3dbd011d8.jpg'},
  {'Name': "Kiran", 'Message': "Buddy loves to play.", 'url': 'https://i.pinimg.com/474x/e1/9f/66/e19f66431962c2cc3438adb50eb40ecf.jpg'},
  {'Name': "Gousia", 'Message': "Luna enjoys cuddles.", 'url': 'https://i.pinimg.com/474x/ae/15/e9/ae15e9995312536f5db1c5a76c49cf04.jpg'},
  {'Name': "Sriram", 'Message': "Rocky is strong.", 'url': 'https://i.pinimg.com/474x/a1/41/e0/a141e082ba8a9cd89548d4e4498bfc3d.jpg'},
  {'Name': "Swarupa", 'Message': "Molly is gentle.", 'url': 'https://i.pinimg.com/474x/d9/64/df/d964df81606909463603c73bd065ed44.jpg'},
  {'Name': "Poojitha", 'Message': "Duke is smart.", 'url': 'https://i.pinimg.com/564x/1f/7a/c3/1f7ac31324d658cf7549e015b93007c2.jpg'},
  {'Name': "Daniel", 'Message': "Meezo is playful.", 'url': 'https://i.pinimg.com/474x/6d/16/1f/6d161f857df862de319c1c7ef04d5c79.jpg'},
  {'Name': "Upanisha", 'Message': "Keero is kind.", 'url': 'https://i.pinimg.com/564x/ee/fb/b6/eefbb627bb155991b1e687b07b3e3933.jpg'},
  {'Name': "Rocky", 'Message': "Ben is strong.", 'url': 'https://i.pinimg.com/474x/97/39/5e/97395e774f335d862cef7fc0e9b22956.jpg'}
];
List<Map<String, String>> pets = [
  {
    'url': 'https://i.natgeofe.com/n/5f35194b-af37-4f45-a14d-60925b280986/NationalGeographic_2731043_3x4.jpg',
    'name': 'Max',
    'address': '5km away'
  },
  {
    'url': 'https://www.shutterstock.com/image-photo/happy-puppy-welsh-corgi-14-600nw-2270841247.jpg',
    'name': 'Bella',
    'address': '12km away'
  },
  {
    'url': 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322868/golden-retriever-puppy.jpg',
    'name': 'Daisy',
    'address': '8km away'
  },
  {
    'url': 'https://i.natgeofe.com/n/4cebbf38-5df4-4ed0-864a-4ebeb64d33a4/NationalGeographic_1468962.jpg',
    'name': 'Buddy',
    'address': '10km away'
  },
  {
    'url': 'https://static.scientificamerican.com/sciam/cache/file/32665E6F-8D90-4567-9769D59E11DB7F26_source.jpg?w=1200',
    'name': 'Luna',
    'address': '7km away'
  },
  {
    'url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdaR-66ZFKXaQLf0ULnXEB-yng2JbR4ijjww&s',
    'name': 'Charlie',
    'address': '3km away'
  },
  {
    'url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq00uXqOWNZb9Hcc-i0DPZk7MRQRyzxNV-3g&s',
    'name': 'Lucy',
    'address': '15km away'
  },
  {
    'url': 'https://www.allaboutbirds.org/news/wp-content/uploads/2024/05/549985061-Rufous_Hummingbird-Nathan_Wall-FI-480x360.jpg',
    'name': 'Cooper',
    'address': '4km away'
  },
  {
    'url': 'https://d.newsweek.com/en/full/1944028/hamsters.jpg?w=1200&f=8a59a2019df80717996239bca5ef61da',
    'name': 'Bailey',
    'address': '9km away'
  },
  {
    'url': 'https://www.humanesociety.org/sites/default/files/2019/03/rabbit-475261_0.jpg',
    'name': 'Molly',
    'address': '11km away'
  },

];

class Messagespages extends StatefulWidget {
  const Messagespages({super.key});

  @override
  State<Messagespages> createState() => _MessagespagesState();
}

class _MessagespagesState extends State<Messagespages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding:EdgeInsets.only(left:40),
          child:Row(

            children: [
              Icon(
                Icons.message_rounded,
                color: Color.fromRGBO(135, 76, 204, 1),
              ),
              SizedBox(width: 10),
              Text(
                "Messages",
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromRGBO(135, 76, 204, 1),
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width - 30,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText: 'Search here...',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(135, 76, 204, 1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ListView.separated(
              itemCount: list.length,
              separatorBuilder: (context, index) => SizedBox(height: 20),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage()));
                    },
                    child:ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: NetworkImage(list[index]["url"]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        list[index]["Name"],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(list[index]["Message"]),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class LikedPage extends StatefulWidget {
  const LikedPage({super.key});

  @override
  State<LikedPage> createState() => _LikedPageState();
}

class _LikedPageState extends State<LikedPage> {
  // Default selected state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(padding: EdgeInsets.only(left:30,right:0),
          child:Row(
              children: [
                Icon(
                  Icons.favorite_outline_rounded,
                  color: Color.fromRGBO(135, 76, 204, 1),
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  "Liked Buddies",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromRGBO(135, 76, 204, 1),
                    fontWeight: FontWeight.bold,
                  ),),]

          ),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 20.0,
            mainAxisExtent: 160
          ),
          itemCount: likedBuddies.length,
          itemBuilder: (context, index) {
            return Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                  width: 0.3,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(likedBuddies[index]['url']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              likedBuddies[index]['Name'],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                             likedBuddies[index]['Address'],
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            likedBuddies.remove(likedBuddies[index]);
                            build(context);
                            
                          },
                          child: Icon(
                            Icons.favorite_rounded,
                            size: 22,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
class Track extends StatefulWidget {
  const Track({super.key});

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  List<String> countries = ['India', 'United States', 'Australia'];
  List<String> states = ['Andhra Pradesh', 'Karnataka', 'Maharashtra', 'Tamil Nadu', 'Uttar Pradesh'];

  // Selected values
  String selectedCountry = 'India';  // Default selected country
  String selectedState = 'Andhra Pradesh';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(padding: EdgeInsets.only(left:30,right:0),
            child:Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Color.fromRGBO(135, 76, 204, 1),
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Edit address",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromRGBO(135, 76, 204, 1),
                      fontWeight: FontWeight.bold,
                    ),),]

            ),),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(top:30),
          child:Column(
            children: [
              SizedBox(height: 30),
              Center(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width - 30,
                  height: 50,
                  child: DropdownButtonFormField<String>(
                    value: selectedCountry,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    items: countries.map((String country) {
                      return DropdownMenuItem<String>(
                        value: country,
                        child: Text(country),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedCountry = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 18),
              Center(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width - 30,
                  height: 50,
                  child: DropdownButtonFormField<String>(
                    value: selectedState,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    items: states.map((String state) {
                      return DropdownMenuItem<String>(
                        value: state,
                        child: Text(state),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedState = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height:18),
              Center(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width - 30,
                  height:50,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintText: 'City,Village',
                    ),
                  ),
                ),
              ),
              SizedBox(height:18),
              Center(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width - 30,
                  height:50,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintText: 'Street,Colony',
                    ),
                  ),
                ),
              ),
              SizedBox(height:18),
              Center(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width - 30,
                  height:50,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      hintText: 'Building name,Apartment name',
                    ),
                  ),
                ),
              ),
              SizedBox(height:18),
              Center(
                  child: Padding(padding:EdgeInsets.only(left:10,right:10),child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width /2- 30,
                        height:50,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            hintText: 'House no',
                          ),
                        ),
                      ),
                      SizedBox(width:20),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width/2-30,
                        height:50,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            hintText: 'pincode',
                          ),
                        ),
                      ),
                    ],
                  ),
                  )),
              SizedBox(height:20),
              Container(
                  height:60,
                  width: MediaQuery.sizeOf(context).width-30,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(135, 76, 204, 1).withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Icon(Icons.location_searching,color: Colors.white,),
                        SizedBox(width:10),
                        Text("Use my location",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                      ]
                  )
                  )),
              SizedBox(height:20),
              Container(
                  height:60,
                  width: MediaQuery.sizeOf(context).width-30,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(135, 76, 204, 1).withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child:Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Icon(Icons.add,color: Colors.white,),
                        SizedBox(width:10),
                        Text("Use this location",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                      ]
                  )
                  ))
            ],
          ),
        ));
  }
}
class Trackpage extends StatefulWidget {
  const Trackpage({super.key});

  @override
  State<Trackpage> createState() => _TrackpageState();
}

class _TrackpageState extends State<Trackpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(padding: EdgeInsets.only(left:20,right:0),
          child:Row(
              children: [
                Icon(
                  Icons.directions_bike_outlined,
                  color: Color.fromRGBO(135, 76, 204, 1),
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  "Track your order",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color.fromRGBO(135, 76, 204, 1),
                    fontWeight: FontWeight.bold,
                  ),),]

          ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          Center(child:Container(
            padding: EdgeInsets.all(20),
            height:200,
            width:MediaQuery.sizeOf(context).width-40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child:Center(child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[Text("Track id: 9k1LApAP2"),
                      Icon(Icons.keyboard_arrow_down,color: Colors.black,size:30)
                    ]
                ),
                SizedBox(height:10),
                Row(children:[Text("Pedigree dog food",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)]),
                SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("27 Jul,2025"),
                        Text("Kakinada",style: TextStyle(color: Color.fromRGBO(135, 76, 204, 1),fontWeight: FontWeight.bold,fontSize: 18),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("3 Aug,2025"),
                        Text("Rajahmundry",style: TextStyle(color: Color.fromRGBO(135, 76, 204, 1),fontWeight: FontWeight.bold,fontSize: 18),)
                      ],
                    ),

                  ],),
                SizedBox(height:20),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width - 50,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.grey
                      ),
                    ),

                    Positioned(child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey
                      ),
                    ),
                      left: -5,
                      top: -5,
                    ),

                    Positioned(child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(135, 76, 204, 1)
                        ),
                        child:Center(
                          child: Icon(
                            Icons.delivery_dining,color: Colors.white,
                          ),
                        )
                    ),
                      left: 0,
                      right: 0,
                      top: -15,
                    ),

                    Positioned(child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey
                      ),
                    ),
                      right: -5,
                      top: -5,
                    )

                  ],
                )
              ],
            ),),
          )),
          SizedBox(height: 15,),
          Center(child:Stack(
              children: [

                Container(
                  padding: EdgeInsets.all(20),
                  height:350,
                  width:MediaQuery.sizeOf(context).width-40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),  // Shadow color with some opacity
                        spreadRadius: 5,  // Spread radius
                        blurRadius: 7,    // Blur radius
                        offset: Offset(0, 3),  // Offset in the x and y direction
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [Text("27 Jul,2025",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("10:20 AM")]
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Pick up",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("Kakinada,AP")]
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [Text("29 Jul,2025",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("11:30 AM")]
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Dispatched",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("Surampalem,AP")]
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [Text("1 Aug,2025",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("10:00 AM")]
                          ),

                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Arrived to Rjy",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("Rajahmundry,AP")]
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [Text("3 Aug,2025",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("10:20 AM")]
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("In Transit",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                Text("Rajahmundry,AP")]
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                Positioned(child: Container(
                  width: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(135, 76, 204, 1)
                        ),
                      ),
                        top: -5,
                        left: -8,
                      ),

                      Positioned(child: Container(
                        height: 100,
                        width: 5,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(135, 76, 204, 1)
                        ),
                      ),
                        top: -5,
                        left: 0,
                      ),

                      Positioned(child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(135, 76, 204, 1)
                        ),
                      ),
                        top: 80,
                        left: -8,
                      ),

                      Positioned(child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey
                        ),
                      ),
                        top: 160,
                        left: -8,
                      ),

                      Positioned(child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green
                        ),
                      ),
                        bottom: -5,
                        left: -8,
                      )
                    ],
                  ),
                ),
                  top: 45,
                  bottom: 45,
                  left: 155,
                )

              ]
          ))
        ],
      ),
    );
  }
}
class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Message> _messages = [
    Message(text: 'Hi, I want to know about your pet', isSent: false),
  ];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add(Message(text: _controller.text, isSent: true));
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return Align(
                  alignment:
                  message.isSent ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: message.isSent ? Colors.blue : Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      message.text,
                      style: TextStyle(
                        color: message.isSent ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter your message',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final bool isSent;

  Message({required this.text, required this.isSent});
}