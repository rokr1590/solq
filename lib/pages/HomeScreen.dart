import 'package:flutter/material.dart';
import 'package:soloq/widgets/blur_background.dart';
import 'package:soloq/widgets/custom_circle.dart';
import 'package:soloq/theme/app_style.dart';
import 'package:soloq/utils/size_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children:[
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Material(
            color: const Color(0xff121212),
            child: Stack(
              children:[
                Positioned(
                  right: MediaQuery.sizeOf(context).width*0.50,
                  top: MediaQuery.sizeOf(context).height*0.10,
                  child: Transform.rotate(
                    angle: 1.83,
                    child: const CustomCircle(colorList: [Color(0xff36bed9), Color(0xff207cd8)],cHeight: 309.91,cWidth: 298.72,)
                  ),
                ),
                Positioned(
                  left: MediaQuery.sizeOf(context).width-MediaQuery.sizeOf(context).width*0.50,
                  top: MediaQuery.sizeOf(context).height*0.65,
                  child: Transform.rotate(
                    angle: 0.41,
                    child: const CustomCircle(colorList: [Color(0xff601cbf), Color(0xffe539ac)],cHeight:355.97,cWidth:358.49,)
                  ),
                ),
                Positioned(
                  top: MediaQuery.sizeOf(context).height*0.40,
                  left: MediaQuery.sizeOf(context).width*0.58,
                  child: Transform.rotate(
                    angle: 0.41,
                    child: const CustomCircle(cWidth: 137.14, cHeight: 136.18,colorList: [Color(0xfff23051), Color(0xffff9f1a)],),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.sizeOf(context).height*0.75,
                  left: MediaQuery.sizeOf(context).width*0.62,
                  child: Transform.rotate(
                    angle: 0.41,
                    child:const CustomCircle(colorList: [Color(0xff601cbf), Color(0xffe539ac)],cHeight: 244.33,cWidth: 246.06,) ,
                  ),
                ),
                Positioned(
                  right: MediaQuery.sizeOf(context).width*0.55,
                  top: MediaQuery.sizeOf(context).height*0.55,
                  child: const CustomCircle(colorList: [Color(0xffe539ac), Color(0xff207cd8)],cWidth: 291,cHeight: 294,)
                ),
                FrostWidget(
                    xSigma:5,
                    ySigma:5,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(left: 20,top: 75,right: 24),
                          child: Container(
                            //color: Colors.amber,
                            height: getVerticalSize(250), //MediaQuery.sizeOf(context).height*0.25,
                            width: getHorizontalSize(350),//MediaQuery.sizeOf(context).width*0.90,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Hi John,",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtJosefinSansSemiBold20,
                                ),
                                Padding(
                                  padding: getPadding(left: 3,top: 9),
                                  child: Text(
                                    "Complete what you’ve left off!",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtJosefinSansLight16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
