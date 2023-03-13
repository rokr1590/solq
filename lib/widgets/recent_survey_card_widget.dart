import 'package:flutter/material.dart';
import 'package:soloq/theme/app_style.dart';
import 'package:soloq/utils/color_constant.dart';
import 'package:soloq/utils/size_utils.dart';
class RecentSurveyCard extends StatelessWidget {
  final String customImg;
  final int qAnswered;
  final int totalQuestions;
  const RecentSurveyCard({Key? key,required this.customImg,required this.qAnswered,required this.totalQuestions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        margin: getMargin(right: 10),
        height: MediaQuery.sizeOf(context).height*0.16,
        width: MediaQuery.sizeOf(context).width*0.90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: ColorConstant.pinkCyanPurple
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: MediaQuery.sizeOf(context).width*0.25,
                height: MediaQuery.sizeOf(context).height*0.13,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(customImg,fit: BoxFit.fitHeight)
                )
            ),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.045),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: getMargin(bottom: 10),
                  child: const Text(
                    "AI Technology",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Josefin Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  "$qAnswered/$totalQuestions answered",
                  style: AppStyle.txtJosefinSansLight16Black,
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height*0.008,
                  width: MediaQuery.sizeOf(context).width*0.50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                      backgroundColor: ColorConstant.whiteA700,
                      color: ColorConstant.blue500,
                      value: qAnswered/totalQuestions,

                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "10 Questions",
                      style: AppStyle.txtJosefinSansLight10Black,
                    ),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.28,),
                    Text(
                      "10 points",
                      style: AppStyle.txtJosefinSansLight10Black,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
