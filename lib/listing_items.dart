import 'package:buddy/cart_page.dart';
import 'package:buddy/item_view.dart';
import 'package:flutter/material.dart';


class ListingItems extends StatefulWidget {
  final List<Map<String, dynamic>>items;
  const ListingItems({required this.items,super.key});

  @override
  State<ListingItems> createState() => _ListingItemsState();
}

class _ListingItemsState extends State<ListingItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Suneeta', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              Text('Kakinada,Andhra pradesh', style: TextStyle(fontSize: 18, color: Color.fromRGBO(140, 130, 223, 1)),)
            ],
          ),
        ),
        actions: [
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
              },
              child: Icon(Icons.shopping_cart_outlined, color: Colors.black, size: 30,)),
          SizedBox(width: 30,)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 10,),

            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                hintText: 'Search here...',
                prefixIcon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(159, 168, 218, 1),
                ),
              ),
            ),

            SizedBox(height: 20,),

            Expanded(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 255
              ),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemViewPage(singleItem: widget.items[index])));
                      },
                      child: Container(
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.network(
                                    widget.items[index]['url'],
                                    height: 140,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    top: 5,
                                    right: 5,
                                    child: Container(
                                      child: Icon(
                                        Icons.favorite_border,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                width: 100,
                                child: Text(
                                  widget.items[index]['Name'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                widget.items[index]['Price'],
                                style: TextStyle(
                                    fontSize: 16,
                                    color:  Color.fromRGBO(140, 130, 223, 1),
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )

          ],
        ),
      ),
    );
  }
}

