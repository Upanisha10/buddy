import 'package:flutter/material.dart';
final List<Map<String,dynamic>> list=[
  {'Name': "Marina", 'Message': "9 minutes ago", 'url': 'https://i.pinimg.com/474x/1f/b8/0a/1fb80a951ed9a54681b7a1b3dbd011d8.jpg'},
  {'Name': "John", 'Message': "10 hours ago", 'url': 'https://i.pinimg.com/474x/e1/9f/66/e19f66431962c2cc3438adb50eb40ecf.jpg'},
  {'Name': "Jasmine", 'Message': "12 hours ago", 'url': 'https://i.pinimg.com/474x/ae/15/e9/ae15e9995312536f5db1c5a76c49cf04.jpg'},
  {'Name': "Micheal", 'Message': "16 hours ago", 'url': 'https://i.pinimg.com/474x/a1/41/e0/a141e082ba8a9cd89548d4e4498bfc3d.jpg'},
];

class RequestPage extends StatefulWidget {
  const RequestPage({super.key});

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  List<bool> acceptSelected = [true, true, true, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 50),
          child: Row(
            children: [
              Icon(
                Icons.send,
                color: Color.fromRGBO(135, 76, 204, 1),
                size: 30,
              ),
              SizedBox(width: 10),
              Text(
                "Requests",
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromRGBO(135, 76, 204, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: acceptSelected.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(image: NetworkImage(list[index]["url"]))
              ),
            ),
            title: Text(list[index]["Name"]),
            subtitle: Text(list[index]["Message"]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      acceptSelected[index] = true;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: acceptSelected[index]
                        ? Color.fromRGBO(135, 76, 204, 1)
                        : Colors.transparent,
                    foregroundColor: acceptSelected[index]
                        ? Colors.white
                        : Colors.black,
                  ),
                  child: Text("Accept"),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    setState(() {
                      acceptSelected[index] = false;
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: !acceptSelected[index]
                        ? Colors.red
                        : Colors.transparent,
                    foregroundColor: !acceptSelected[index]
                        ? Colors.white
                        : Colors.black,
                  ),
                  child: Text("Reject"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}