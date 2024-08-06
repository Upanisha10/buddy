import 'package:flutter/material.dart';

List<Map<dynamic, dynamic>> cartItems = [];

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(140, 130, 223, 1).withOpacity(0.3),
                ),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all()),
                    child: Icon(Icons.person),
                  ),
                  title: Text('Suneeta', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  subtitle: Text('Kakinada, Andhra Pradesh', style: TextStyle(fontSize: 16)),
                ),
              ),

              SizedBox(height: 30),

              (cartItems.isEmpty)
                  ? Center(
                child: Stack(
                  children: [
                    Container(
                      height: 230,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 3,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/shocked-cat.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      bottom: 0,
                      left: 0,
                    ),
                    Positioned(
                      child: SizedBox(
                        width: 150,
                        child: Text(
                          r'You have no items in your cart.',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      right: 40,
                      top: 30,
                    ),
                    Positioned(
                      child: SizedBox(
                        width: 170,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(140, 130, 223, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Discover More',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      right: 20,
                      top: 140,
                    ),
                  ],
                ),
              )
                  : ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            cartItems[index]['url'],
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cartItems[index]['Name'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                cartItems[index]['Price'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                setState(() {
                                  cartItems.removeAt(index);
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: cartItems.isNotEmpty
          ? SizedBox(
        height: 60,
        width: MediaQuery.sizeOf(context).width - 20,
        child: ElevatedButton(
          onPressed: () {
            // Proceed to checkout action
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(140, 130, 223, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            'Proceed to Checkout',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      )
          : null,
    );
  }
}
