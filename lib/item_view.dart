import 'package:flutter/material.dart';
import 'package:buddy/cart_page.dart';


class ItemViewPage extends StatefulWidget {
  final Map<dynamic, dynamic> singleItem;
  const ItemViewPage({required this.singleItem, super.key});

  @override
  State<ItemViewPage> createState() => _ItemViewPageState();
}

class _ItemViewPageState extends State<ItemViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Suneeta', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text('Kakinada, Andhra Pradesh', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          spreadRadius: 5,
                        ),
                      ],
                      image: DecorationImage(
                        image: NetworkImage(widget.singleItem['url']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(140, 130, 223, 1).withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.favorite_border_rounded, color: Colors.white, size: 25),
                    ),
                    bottom: -20,
                    right: 15,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(widget.singleItem['Name']!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              SizedBox(height: 10),
              Text(widget.singleItem['Price']!, style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildFeatureIcon(Icons.monetization_on_outlined, 'Pay on Delivery'),
                  SizedBox(width: 5),
                  _buildFeatureIcon(Icons.delivery_dining, 'Free Delivery'),
                  SizedBox(width: 5),
                  _buildFeatureIcon(Icons.autorenew_rounded, '10 days Returnable'),
                ],
              ),
              SizedBox(height: 20),
              _buildActionButton(Icons.shopping_cart_outlined, 'Add to Cart', () {
                setState(() {
                  cartItems.add(widget.singleItem);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        title: Row(
                          children: [
                            Icon(Icons.shopping_cart_outlined),
                            SizedBox(width: 10),
                            Text('Cart', style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        content: Text('Added to the cart successfully', style: TextStyle(fontSize: 16)),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                });
              }),
              SizedBox(height: 20),
              _buildActionButton(Icons.discount_outlined, 'Buy Now', () {
                // Implement Buy Now functionality
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureIcon(IconData icon, String label) {
    return Container(
      height: 92,
      padding: EdgeInsets.all(10),
      width: MediaQuery.sizeOf(context).width / 3 - 25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromRGBO(140, 130, 223, 1)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon),
          SizedBox(height: 5),
          Text(label, textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(140, 130, 223, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 30),
            SizedBox(width: 10),
            Text(label, style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
