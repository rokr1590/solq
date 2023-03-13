
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:soloq/theme/app_style.dart';
import 'package:soloq/utils/color_constant.dart';
import 'package:soloq/utils/image_constant.dart';
import 'package:soloq/utils/size_utils.dart';

class SurveyCard extends StatefulWidget {
  final Color customChipColor;
  final String customImg;
  final String cardTitle;
  final String cardSubtext;
  final int noOfQuestions;
  final int noOfPoints;
  final String customChipText;
  const SurveyCard({Key? key,required this.customChipText,required this.customChipColor,required this.customImg,required this.cardSubtext,required this.cardTitle,required this.noOfPoints,required this.noOfQuestions}) : super(key: key);

  @override
  State<SurveyCard> createState() => _SurveyCardState();
}

class _SurveyCardState extends State<SurveyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getMarginOrPadding(left: 20,right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 20,sigmaX: 20),
          child: Container(
            width: MediaQuery.sizeOf(context).width*0.90,
            height: MediaQuery.sizeOf(context).height*0.16,
            padding: const EdgeInsets.only(left: 8, right: 11, ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.25,
                  height: MediaQuery.sizeOf(context).height*0.13,
                  child: Stack(
                    children:[
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: MediaQuery.sizeOf(context).width*0.25,
                            height: MediaQuery.sizeOf(context).height*0.13,
                            child: ClipRRect(borderRadius: BorderRadius.circular(16),child: Image.asset(widget.customImg,fit: BoxFit.fitHeight))
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.045),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width*0.25,
                          height: /*18.11*/MediaQuery.sizeOf(context).height*0.024,
                          child: Material(
                            color: widget.customChipColor,
                            borderRadius: BorderRadius.circular(32),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4, ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Text(
                                    widget.customChipText,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.cardTitle,
                      style: AppStyle.txtJosefinSansSemiBold16/*const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      )*/,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: 190,
                      child: Text(
                        widget.cardSubtext,
                        style: AppStyle.txtJosefinSansLight12,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          "${widget.noOfQuestions} Questions",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(width: 88),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text(
                              "${widget.noOfPoints} points",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
