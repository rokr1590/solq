import 'package:flutter/material.dart';

import '../../theme/app_style.dart';
import '../../utils/color_constant.dart';
import '../../utils/image_constant.dart';
import '../../utils/size_utils.dart';
import '../../widgets/auth_login_widget.dart';
import '../../widgets/blur_background.dart';
import '../../widgets/custom_circle.dart';
import '../../widgets/custom_textform_field.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _passwordVisible =false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        resizeToAvoidBottomInset: false,
        body: Row(
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
                        right: MediaQuery.sizeOf(context).width*0.5,
                        top: MediaQuery.sizeOf(context).height*0.10,
                        child:const CustomCircle(colorList: [Color(0xff36bed9), Color(0xff248bf2)], cHeight: 345, cWidth: 300)
                    ),
                    Positioned(
                      left: MediaQuery.sizeOf(context).width*0.50,
                      bottom: MediaQuery.sizeOf(context).height*0.10,
                      child:const CustomCircle(colorList: [Color(0xff7a24f2), Color(0xffe539ac)], cHeight: 358, cWidth: 300),
                    ),
                    FrostWidget(
                        xSigma: 50,
                        ySigma: 50,
                        child: Container(
                          margin: const EdgeInsets.all(16.0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 10, 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Welcome Back,\nwe've missed you",
                                  style:AppStyle.txtJosefinSansSemiBold36
                              ),
                              const SizedBox(height:40),
                              CustomTextFormField(
                                width: getHorizontalSize(
                                  320,
                                ),
                                focusNode: FocusNode(),
                                controller: emailController,
                                hintText: "Email Address",
                                margin: getMargin(
                                  bottom: 45,
                                ),
                                textInputType: TextInputType.emailAddress,
                                alignment: Alignment.bottomRight,
                              ),
                              CustomTextFormField(
                                width: getHorizontalSize(
                                  320,
                                ),
                                focusNode: FocusNode(),
                                controller: passwordController,
                                hintText: "Password",
                                margin: getMargin(
                                  bottom: 20,
                                ),
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                alignment: Alignment.bottomRight,
                                suffix: GestureDetector(
                                  onTap: (){setState(() {
                                    _passwordVisible =!_passwordVisible;
                                  });},
                                  child: Icon(_passwordVisible?Icons.visibility:Icons.visibility_off,color: Colors.white/*Theme.of(context).primaryColorDark*/),
                                ),
                                suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(
                                    22,
                                  ),
                                ),
                                isObscureText: _passwordVisible,
                              ),
                              Padding(
                                padding: getPadding(bottom: 40),
                                child: InkWell(
                                    onTap: (){},
                                    child: Text(
                                      "Forgot Password?",overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtJosefinSansLight16Blue500,
                                    )
                                ),
                              ),
                              Container(
                                padding: getPadding(left: 20,right: 20)/*EdgeInsets.fromLTRB(20, 0, 20, 0),*/,
                                height: MediaQuery.sizeOf(context).height*0.060,
                                width: MediaQuery.sizeOf(context).width,
                                decoration: BoxDecoration(borderRadius:BorderRadius.circular(30),gradient: const LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [Color(0xff6d20d8), Color(0xffd835a2), Color(0xffd88716)], ),),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,
                                    onSurface: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                      "Log In",
                                      style:TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.w400)
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                      bottom: 6,
                                    ),
                                    child: SizedBox(
                                      width: getHorizontalSize(
                                        80,
                                      ),
                                      child: Divider(
                                        color: ColorConstant.whiteA700,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                        left: 27,
                                        right : 20,bottom: 5
                                    ),
                                    child: Text(
                                      "Or sign up with",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtJosefinSansLight16,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 8,
                                      bottom: 6,
                                    ),
                                    child: SizedBox(
                                      width: getHorizontalSize(
                                        80,
                                      ),
                                      child: Divider(
                                        color: ColorConstant.whiteA700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(top: 30,bottom: 80),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(child: AuthLoginButton(ImagePath: ImageConstant.imgFacebook,),onTap: (){},),
                                    AuthLoginButton(ImagePath: ImageConstant.imgGoogle,),
                                    AuthLoginButton(ImagePath: ImageConstant.imgApple,),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
