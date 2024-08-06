import 'package:flutter/material.dart';
import 'package:buddy/on_boarding.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double height = constraints.maxHeight;
          double width = constraints.maxWidth;

          return Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Buddy',
                        style: TextStyle(
                          fontSize: height * 0.045, // Responsive font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: height * 0.35, // Responsive height
                          width: height * 0.35, // Responsive width
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(height * 0.35),
                            border: Border.all(
                              color: Color.fromRGBO(140, 130, 223, 1),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.325, // Responsive height
                          width: height * 0.325, // Responsive width
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(height * 0.325),
                            color: Color.fromRGBO(145, 136, 227, 1),
                            image: DecorationImage(
                              image: AssetImage('assets/cat-dog.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.025), // Responsive spacing
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Find',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: height * 0.035, // Responsive font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' Your Best',
                          style: TextStyle(
                            fontSize: height * 0.035, // Responsive font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Companion',
                          style: TextStyle(
                            fontSize: height * 0.035, // Responsive font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' With Us',
                          style: TextStyle(
                            fontSize: height * 0.035, // Responsive font size
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(145, 136, 227, 1),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.02), // Responsive spacing
                    SizedBox(
                      width: width - 50,
                      child: Text(
                        'Join and discover the best and most suitable pets at a location near you',
                        style: TextStyle(
                          fontSize: height * 0.02, // Responsive font size
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: height * 0.04), // Responsive spacing
                    SizedBox(
                      width: width * 0.5, // Responsive width
                      height: height * 0.075, // Responsive height
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AuthenticationPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Explore',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.025, // Responsive font size
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(145, 136, 227, 1),
                          padding: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -height * 0.05, // Responsive positioning
                right: -width * 0.05, // Responsive positioning
                child: Container(
                  height: height * 0.15, // Responsive size
                  width: height * 0.15, // Responsive size
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber,
                  ),
                ),
              ),
              Positioned(
                left: width * 0.08, // Responsive positioning
                top: height * 0.08, // Responsive positioning
                child: Container(
                  height: height * 0.05, // Responsive size
                  width: height * 0.05, // Responsive size
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.cyan,
                  ),
                ),
              ),
              Positioned(
                left: -width * 0.05, // Responsive positioning
                top: height * 0.25, // Responsive positioning
                child: Container(
                  height: height * 0.0625, // Responsive size
                  width: height * 0.0625, // Responsive size
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pink,
                  ),
                ),
              ),
              Positioned(
                right: -width * 0.08, // Responsive positioning
                top: height * 0.375, // Responsive positioning
                child: Container(
                  height: height * 0.075, // Responsive size
                  width: height * 0.075, // Responsive size
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.indigo,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
