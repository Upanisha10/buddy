
import 'package:buddy/forgot_password.dart';
import 'package:buddy/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> with TickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation<double> _animation;

  late AnimationController _animationControllerSignUp;
  late Animation<double> _animationSignUp;


  bool _isVisible = false;
  bool _isVisibleSignUpPage = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animationControllerSignUp = AnimationController(vsync: this,
        duration: const Duration(seconds: 1)
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _animation = Tween<double>(
      begin: -MediaQuery.of(context).size.height,
      end: MediaQuery.of(context).size.height * 0.1,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );

    _animationSignUp = Tween<double>(
      begin: -MediaQuery.of(context).size.height,
      end: MediaQuery.of(context).size.height*0.2,
    ).animate(
        CurvedAnimation(parent: _animationControllerSignUp, curve: Curves.easeOut)
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationControllerSignUp.dispose();
    super.dispose();
  }

  void _toggleVisibility() {
    setState(() {
      if (_isVisible) {
        _animationController.reverse();
      } else {
        _animationController.forward();
      }
      _isVisible = !_isVisible;
    });

  }

  void _toggleVisibilityOfSignUpPage(){
    setState(() {
      if(_isVisibleSignUpPage){
        _animationControllerSignUp.reverse();
      }
      else{
        _animationControllerSignUp.forward();
      }
      _isVisibleSignUpPage = !_isVisibleSignUpPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

      Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Buddy', style: TextStyle(fontSize: 36, color: Color.fromRGBO(47, 53, 67,1), fontWeight: FontWeight.bold),),
          SizedBox(height: 50,),

          Row(
            children: [
              SizedBox(
                width: 250,
                height: 60,
                child: ElevatedButton(onPressed: _toggleVisibility,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent.withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(0),
                                right: Radius.circular(15)
                            )
                        )
                    ),
                    child: Text('sign up', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
              ),
            ],
          ),

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 250,
                height: 60,
                child: ElevatedButton(onPressed: _toggleVisibilityOfSignUpPage,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(140, 130, 223,1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(15),
                                right: Radius.circular(0)
                            )
                        )
                    ),
                    child: Text('sign in', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/sleepy-cat.png'), fit: BoxFit.fill)
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text('hi human', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromRGBO(47,53,67,1)),),
          SizedBox(
              width: 280,
              child: Text('do you wanna sign in or signup to have me or whatever?', style: TextStyle( color: Color.fromRGBO(47,53,67,1), fontSize: 18), textAlign: TextAlign.center,)),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login with', style: TextStyle(color: Color.fromRGBO(47,53,67,1), fontSize: 18),),
              SizedBox(width: 10,),
              Container(
                height: 40,
                width: 40,
                child: Icon(Icons.g_mobiledata, color: Colors.white, size: 35,),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(47,53,67,1),
                    borderRadius: BorderRadius.circular(5)
                ),
              ),
              SizedBox(width: 10,),
              Container(
                height: 40,
                width: 40,
                child: Icon(Icons.facebook_rounded, color: Colors.white,),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(47,53,67,1),
                    borderRadius: BorderRadius.circular(5)
                ),
              )
            ],
          ),
          SizedBox(height: 20,)
        ],
      ),
    ),
          if (_isVisibleSignUpPage || _isVisible)
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          AnimatedBuilder(animation: _animationControllerSignUp,
            builder: (context, child){
              return Positioned(
                top: _animationSignUp.value,
                left: 20,
                right: 20,
                child: Opacity(
                  opacity: _isVisibleSignUpPage ? 1.0 : 0.0,
                  child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(5),

                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
//backgroundBlendMode: BlendMode.luminosity,
                                color: CupertinoColors.systemBackground,
                            ),
                            child: Column(
                              children: [
                                Text('Sign In', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text('Your next best friend is just a few clicks away, and we are excited to help you make a lasting connection.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2
                                  ),

                                ),
                                SizedBox(height: 20,),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Email',style: TextStyle(
                                      color: CupertinoColors.label
                                  ),),
                                ),
                                SizedBox(height: 8,),
                                SizedBox(
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(color: Colors.black.withOpacity(0.1))
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black.withOpacity(0.1),),
                                            borderRadius: BorderRadius.circular(10)
                                        )
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Password',
                                      style: TextStyle(
                                          color: CupertinoColors.label
                                      ),
                                    )),
                                SizedBox(height: 8,),
                                SizedBox(
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(color: Colors.black.withOpacity(0.1))
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black.withOpacity(0.1),),
                                            borderRadius: BorderRadius.circular(10)
                                        )
                                    ),
                                    obscureText: true,),
                                ),

                                SizedBox(height: 20,),

                                GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgotpassword()));
                                    },
                                    child: Text('Forgot Password?', style: TextStyle(color: Color.fromRGBO(140, 130, 223,1), fontSize: 16),)),
                                SizedBox(height: 20,),
                                ElevatedButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllScreens()));
                                },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(140, 130, 223,1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: EdgeInsets.all(15)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Sign In', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                                      SizedBox(width: 8,),
                                      Icon(Icons.arrow_forward, color: Colors.white, size: 15,)
                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -15,
                          left: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: _toggleVisibilityOfSignUpPage,
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(140, 130, 223,1),
                                boxShadow: [
                                  BoxShadow(
                                    color: CupertinoColors.inactiveGray,
                                    blurRadius: 10,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                              ),
                              child: Icon(Icons.clear, color: Colors.white,),
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              );
            },
          ),

          AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Positioned(
                top: _animation.value,
                left: 20,
                right: 20,
                child: Opacity(
                  opacity: _isVisible ? 1.0 : 0.0,
                  child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(5),
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
//backgroundBlendMode: BlendMode.luminosity,
                                color: CupertinoColors.systemBackground,
                            ),
                            child: Column(
                              children: [
                                Text('Sign Up', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text('Your next best friend is just a few clicks away, and we are excited to help you make a lasting connection.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2
                                  ),

                                ),

                                SizedBox(height: 15,),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Full Name',
                                      style: TextStyle(
                                          color: CupertinoColors.label
                                      ),
                                    )),
                                SizedBox(height: 8,),
                                SizedBox(
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(color: Colors.black.withOpacity(0.1))
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black.withOpacity(0.1),),
                                            borderRadius: BorderRadius.circular(10)
                                        )
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Email',
                                      style: TextStyle(
                                          color: CupertinoColors.label
                                      ),
                                    )),
                                SizedBox(height: 8,),
                                SizedBox(
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(color: Colors.black.withOpacity(0.1))
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black.withOpacity(0.1),),
                                            borderRadius: BorderRadius.circular(10)
                                        )
                                    ),
                                  ),
                                ),

                                SizedBox(height: 15,),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Password',
                                      style: TextStyle(
                                          color: CupertinoColors.label
                                      ),
                                    )),
                                SizedBox(height: 8,),
                                SizedBox(
                                  height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(color: Colors.black.withOpacity(0.1))
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black.withOpacity(0.1),),
                                            borderRadius: BorderRadius.circular(10)
                                        )
                                    ),
                                  ),
                                ),

                                SizedBox(height: 15,),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Confirm Password',
                                      style: TextStyle(
                                          color: CupertinoColors.label
                                      ),
                                    )),
                                SizedBox(height: 8,),
                                SizedBox(height: 40,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide(color: Colors.black.withOpacity(0.1))
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black.withOpacity(0.1),),
                                            borderRadius: BorderRadius.circular(10)
                                        )
                                    ),
                                  ),
                                ),


                                SizedBox(height: 20,),
                                ElevatedButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllScreens()));
                                },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color.fromRGBO(140, 130, 223,1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: EdgeInsets.all(15)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Create Account', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                                      SizedBox(width: 8,),
                                      Icon(Icons.arrow_forward, color: Colors.white, size: 15,)
                                    ],
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -15,
                          left: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: _toggleVisibility,
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(140, 130, 223,1),
                                boxShadow: [
                                  BoxShadow(
                                    color: CupertinoColors.inactiveGray,
                                    blurRadius: 10,
                                    offset: Offset(0, 10),
                                  ),
                                ],
                              ),
                              child: Icon(Icons.clear, color: Colors.white,),
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );

  }
}