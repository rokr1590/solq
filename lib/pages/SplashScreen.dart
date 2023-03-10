import 'dart:ui';
import 'package:flutter/material.dart';
import '../widgets/animated_widgets.dart';
import 'package:soloq/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Material(
              color: const Color(0xff121212),
              child: Stack(
                children:[
                  Positioned(
                    left: 50,
                    top: 280,
                    child: AnimatedText(
                      begoff:Offset.zero,
                      endoff: const Offset(0,-0.5),
                      child: Container(
                        width: 170,
                        height: 170,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xff36bed9), Color(0xff248bf2)], ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 199,
                    top: 300,
                    child: AnimatedText(
                      begoff:Offset.zero,
                      endoff: const Offset(0,-0.6),
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [Color(0xff7a24f2), Color(0xffe539ac)], ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 50,sigmaY: 50),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: MediaQuery.sizeOf(context).height,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200.withOpacity(0)
                          ),
                          child: const Center(
                            child:AnimatedText(begoff:Offset.zero,endoff: Offset(0,-2.5),child: Text(
                              "SOLQ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontFamily: "Josefin Sans",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            )
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.sizeOf(context).height*0.75,
                    child:AnimatedText(
                      begoff:Offset(0,4.5),
                      endoff: Offset.zero,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        height: MediaQuery.sizeOf(context).height*0.060,
                        width: MediaQuery.sizeOf(context).width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffe539ac),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context,AppRoutes.signupScreen);
                          },
                          child: const Text(
                              "Sign Up",
                              style:TextStyle(color: Colors.white, fontSize: 24)
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.sizeOf(context).height*0.85,
                    child:AnimatedText(
                      begoff:Offset(0,4.5),
                      endoff: Offset.zero,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        height: MediaQuery.sizeOf(context).height*0.060,
                        width: MediaQuery.sizeOf(context).width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff7a24f2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                              "Log in",
                              style:TextStyle(color: Colors.white, fontSize: 24)
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



