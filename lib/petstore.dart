import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:buddy/listing_items.dart';

class PetStorePage extends StatelessWidget {
  final List<String> imgList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRALjonwUQD3QOGpcFHsxHkVWNOOUH9fxZmnQ&s',
    'https://images.ctfassets.net/9l3tjzgyn9gr/6ajJH077ZP0xfTRhcQJtKx/0e3d7695377ce8c89a3581c681085aef/best-pet-for-kid-featured.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTknD9ef5G7RFkrsFBAOc0ewbjGi0lmvDdX-g&s',
  ];

  final List<String>categories = [
    'Food', 'Grooming', 'Toys', 'Supplements', 'Feeders', 'Accessories'
  ];

  final List<String>imageurl = [
    'assets/petfood.png', 'assets/grooming.png', 'assets/toys.png', 'assets/supplements.png', 'assets/bowls.png', 'assets/accessories.png'
  ];

  List<Map<String, dynamic>> petFood = [
    {
      'Name': 'Pedigree Dog Food',
      'Price': 'Rs.399',
      'Rating': 3.2,
      'url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR95lDy0JT25FR-NdOENOG0UKsg4-IOy-SeoA&s',
      'quantity' : 1
    },
    {
      'Name': 'Whiskas Dry Food',
      'Price': 'Rs.299',
      'Rating': 3.7,
      'url': 'https://headsupfortails.com/cdn/shop/files/WhiskasOceanFishAdultDryCatFood_f5bbf1f9-31dd-433e-99bd-00582d979f60.jpg?v=1715949708',
      'quantity' : 1
    },
    {
      'Name': 'Optimum Fish Food',
      'Price': 'Rs.129',
      'Rating': 3.8,
      'url': 'https://fishandflow.com/cdn/shop/products/optimum.jpg?v=1665144418&width=1445',
      'quantity' : 1
    },
    {
      'Name': 'ZuPreem Bird Food',
      'Price': 'Rs.350',
      'Rating': 3.8,
      'url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0u25mqZ8Mr_fVUGWDqabwngCYLYO9IsJ-eA&s',
      'quantity' : 1
    },
    {
      'Name': 'Henlo Dry Food',
      'Price': 'Rs.270',
      'Rating': 3.4,
      'url': 'https://supertails.com/cdn/shop/files/Frame344684057.png?v=1716445251',
      'quantity' : 1
    },
    {
      'Name': 'Grain Zero Cat Food',
      'Price': 'Rs.200',
      'Rating': 3.1,
      'url': 'https://m.media-amazon.com/images/I/51KAsAf95yL._AC_UF1000,1000_QL80_.jpg',
      'quantity' : 1
    }
  ];

  List<Map<String, dynamic>> grooming = [
    {
      'Name': 'Anti Tick Spray',
      'Price': 'Rs.570',
      'Rating': 3.8,
      'url': 'https://m.media-amazon.com/images/I/610+Dh5c4jL.jpg'
    },
    {
      'Name': 'Huft 3 in 1 Pack',
      'Price': 'Rs.1080',
      'Rating': 3.5,
      'url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6OvTXT_fZxl3TaETqLVWo2VDYAVmIW8bMIA&s'
    },
    {
      'Name': 'Grooming Glove',
      'Price': 'Rs.350',
      'Rating': 3.6,
      'url': 'https://5.imimg.com/data5/ECOM/Default/2024/1/376693951/HF/CV/ZP/82542766/huftpetgroomingfingerglove-orange-cc431215-20d5-45ba-b6b2-fad2208ae9de-500x500.jpg'
    },
    {
      'Name': 'Trixie Dental Care',
      'Price': 'Rs.330',
      'Rating': 3.8,
      'url': 'https://m.media-amazon.com/images/I/61PBcb2+R7S._AC_UF1000,1000_QL80_.jpg'
    },

    {
      'Name': 'Grooming Kit',
      'Price': 'Rs.5500',
      'Rating': 3.8,
      'url': 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQNOjCsvCjjM0lCW6nxlLR_nwhssOnbWk7AuHce6rw04WyDSXArh39RRiwZiaRJ4gghzN0E8l2sXAbpABd-TA_IZpRHcM6j6umQfkagimocbhk4MNfL8Hop9Q&usqp=CAE'
    },

    {
      'Name': 'Shed Control Shampoo',
      'Price': 'Rs.330',
      'Rating': 3.6,
      'url': 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTZqYJmLS2v3yTThDO58oRC4qZh87UJsqGqpcTTYa8W5d9-SCIo65bQIRCX_9G7n-N3LIlw7nRdEt6dF7yYqOY9tk7nJGjz2zvReVunKdzd8bsiXUBxUR9X&usqp=CAE'
    },
  ];
  
  List<Map<String, dynamic>>popularItems = [
    {
      'Name': 'Huft 3 in 1 Pack',
      'Price': 'Rs.1080',
      'Rating': 3.5,
      'url': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6OvTXT_fZxl3TaETqLVWo2VDYAVmIW8bMIA&s'
    },
    {
      'Name': 'Henlo Dry Food',
      'Price': 'Rs.270',
      'Rating': 3.4,
      'url': 'https://supertails.com/cdn/shop/files/Frame344684057.png?v=1716445251',
      'quantity' : 1
    },
    {
      'Name': 'Shed Control Shampoo',
      'Price': 'Rs.330',
      'Rating': 3.6,
      'url': 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTZqYJmLS2v3yTThDO58oRC4qZh87UJsqGqpcTTYa8W5d9-SCIo65bQIRCX_9G7n-N3LIlw7nRdEt6dF7yYqOY9tk7nJGjz2zvReVunKdzd8bsiXUBxUR9X&usqp=CAE'
    },
    {
      'Name': 'Grooming Kit',
      'Price': 'Rs.5500',
      'Rating': 3.8,
      'url': 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQNOjCsvCjjM0lCW6nxlLR_nwhssOnbWk7AuHce6rw04WyDSXArh39RRiwZiaRJ4gghzN0E8l2sXAbpABd-TA_IZpRHcM6j6umQfkagimocbhk4MNfL8Hop9Q&usqp=CAE'
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top : 40),
        child: SingleChildScrollView(

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all()
                      ),
                      child: Icon(Icons.person_outline, size: 30,),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Suneeta', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        Text('Rajahundry, Andhra Pradesh', style: TextStyle(fontSize: 16, color:  Color.fromRGBO(140, 130, 223, 1)),)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.sizeOf(context).width - 40,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.search, color:  Color.fromRGBO(140, 130, 223, 1)),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  enlargeCenterPage: true,
                ),
                items: imgList.map((item) => buildImageSlider(item)).toList(),
              ),
              SizedBox(height: 20,),
              Text('Categories', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),

              SizedBox(
                height: 300,
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 130
                  ),
                      itemCount: 6,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index){
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> index == 0 ? ListingItems(items: petFood) : ListingItems(items: grooming)));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color:  Color.fromRGBO(140, 130, 223, 1), width: 2),
                                    image: DecorationImage(image: AssetImage(imageurl[index]), fit: BoxFit.scaleDown),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      )
                                    ]
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(categories[index], style: TextStyle(fontSize: 16, ),)
                            ],
                          ),
                        );
                      }),
                ),
              ),

              SizedBox(height: 30,),

              Text('Popular Items', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              SizedBox(
                height: 550,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 255
                  ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index){
                        return Container(
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
                                      popularItems[index]['url'],
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
                                Text(
                                  popularItems[index]['Name'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  popularItems[index]['Price'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageSlider(String item) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Text(
                    'Super Sale Discount\nUp to 50%',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 15,
              child: ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                child: Text('Shop Now', style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                    backgroundColor:  Color.fromRGBO(140, 130, 223, 1)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
