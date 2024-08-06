import 'package:buddy/petstore.dart';
import 'package:buddy/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:buddy/animal_page_view.dart';
import 'package:buddy/main.dart';
import 'package:lottie/lottie.dart';

List<Map<dynamic, dynamic>>likedBuddies = [];

class AllScreens extends StatefulWidget {
  const AllScreens({super.key});

  @override
  State<AllScreens> createState() => _AllScreensState();
}

class _AllScreensState extends State<AllScreens> {

  int tabIndex = 0;

  List<Widget>pages = [HomePage(dogs: dogs, cats: cats, others: others), PetStorePage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[tabIndex],

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            enableFeedback: false,
            backgroundColor: Colors.white,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.storefront_rounded), label: "Store"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: "Profile"),
            ],
            currentIndex: tabIndex,
            selectedItemColor:  Color.fromRGBO(144, 135, 228, 1),
            unselectedItemColor: Color(0xFF5F5F5F),
            onTap: (int index) {
              setState(() {
                tabIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}


class HomePage extends StatefulWidget {
  final List<Map<dynamic, dynamic>> dogs;
  final List<Map<dynamic, dynamic>> cats;
  final List<Map<dynamic, dynamic>> others;
  const HomePage({required this.dogs, required this.cats, required this.others, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isClicked = false;

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  SwiperController _swiperController = SwiperController();

  @override
  void dispose() {
    _swiperController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        child: Lottie.network('https://lottie.host/8e65a6d6-18f3-4243-9ff3-9a3d2e07c099/cqYQfvMszx.json'),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromRGBO(144, 135, 228, 1),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello,",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Suneeta",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
        
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                    color: Color.fromRGBO(159, 168, 218, 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            CarouselSlider(
              options: CarouselOptions(
                height: 130,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInOut,
              ),
              items: [
                BuildContainer("assets/cat-and-dog.png", "Street pets need our protection", 145, 136, 227),
                BuildContainer("assets/doggy2.png", "Help the homeless animals", 199, 126, 255),
                BuildContainer("assets/doggy3.png", "Adopt, dont shop", 250, 215, 183),
                BuildContainer("assets/pets.png", "Donate for a cause", 121, 238, 207),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("Explore ", style: TextStyle(fontSize: 17, color: Colors.lightBlueAccent)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildButton(
                  index: 0,
                  color: Color.fromRGBO(144, 135, 228, 1),
                  text: 'Dogs',
                  url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgDFp3dmPTGj1xOEuSlAt-ilTfBOmYfth5hQ&s',
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
        
                  },
                ),
                SizedBox(width: 10), // Space between buttons
        
                // Second Button
                _buildButton(
                  index: 1,
                  color: Color.fromRGBO(144, 135, 228, 1),
                  text: 'Cats',
                  url: 'https://static.scientificamerican.com/sciam/cache/file/32665E6F-8D90-4567-9769D59E11DB7F26_source.jpg?w=1200',
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
        
                  },
                ),
                SizedBox(width: 10), // Space between buttons
        
                // Third Button
                _buildButton(
                  index: 2,
                  color: Color.fromRGBO(144, 135, 228, 1),
                  text: 'Others',
                  url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSduCB_kxNXVcZgaUdS0NAFtaLI8esiroxirQ&s',
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
        
                  },
                ),
              ],
            ),
            //SizedBox(height: 10,),
            Container(
                height:300,
              child: _selectedIndex == 0 ? DogsPage(animals: dogs, controller: _swiperController) : (_selectedIndex == 1) ? DogsPage(animals: cats, controller: _swiperController) : DogsPage(animals: others, controller: _swiperController),
            )],
        ),
      ),
    );
  }

  Widget BuildContainer(String url, String quote, int r, int g, int b) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 130,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
        color: Color.fromRGBO(r, g, b, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: -5,
            child: Image.asset(
              url,
              height: 150,
              width: 150,
            ),
          ),
          Positioned(
            top: 15,
            left: 130,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  quote,
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 10),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Donate Now',
                    style: TextStyle(color: Color.fromRGBO(r, g, b, 1), fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton({
    required int index,
    required Color color,
    required String text,
    required String url,
    required VoidCallback onPressed,
  }) {
    bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 55,
        width: MediaQuery.sizeOf(context).width / 3 - 15,
        decoration: BoxDecoration(
          color: isSelected ? Color.fromRGBO(144, 135, 228, 1) : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            SizedBox(width: 5),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
              ),
            ),
            SizedBox(width: 5),
            Text(
              text,
              style: TextStyle(fontSize: 17, color: isSelected ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
class DogsPage extends StatefulWidget {
  final List<Map<dynamic, dynamic>> animals;
  final SwiperController controller;

  DogsPage({required this.animals, required this.controller, Key? key}) : super(key: key);

  @override
  State<DogsPage> createState() => _DogsPageState();
}

class _DogsPageState extends State<DogsPage> {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      controller: widget.controller,
      itemCount: widget.animals.length,
      itemBuilder: (BuildContext context, int index) {
        final dog = widget.animals[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Animalviewpage(petInfo: widget.animals[index])));
          },
          child: Container(
            height: 240,
            width: MediaQuery.sizeOf(context).width - 40,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 0.3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                    image: DecorationImage(
                      image: NetworkImage(dog['url']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dog['Name'],
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            dog['Address'],
                            style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                          ),
                        ],
                      ),
                      FavoriteIcon(
                        isClicked: dog['isClicked'],
                        onTap: () {

                          setState(() {
                            dog['isClicked'] = !dog['isClicked'];
                            if(dog['isClicked'] == true){
                              likedBuddies.add(dog);
                            }
                            else{
                              if(likedBuddies.contains(dog) == true){
                                likedBuddies.remove(dog);
                              }
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemWidth: MediaQuery.sizeOf(context).width - 50,
      itemHeight: 280,
      scrollDirection: Axis.horizontal,
      layout: SwiperLayout.STACK,
      loop: true,
      physics: BouncingScrollPhysics(),
      pagination: null,
      control: null,
      autoplay: false,
    );
  }
}

class FavoriteIcon extends StatefulWidget {
  final bool isClicked;
  final VoidCallback onTap;

  const FavoriteIcon({required this.isClicked, required this.onTap, Key? key}) : super(key: key);

  @override
  _FavoriteIconState createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  late bool isClicked;

  @override
  void initState() {
    super.initState();
    isClicked = widget.isClicked;
  }

  @override
  void didUpdateWidget(FavoriteIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isClicked != widget.isClicked) {
      isClicked = widget.isClicked;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Icon(
        Icons.favorite_rounded,
        size: 25,
        color: isClicked ? Colors.red : Colors.grey,
      ),
    );
  }
}
