import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final String title;
  const SquareTile({
    super.key,
    required this.imagePath,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.080,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 25,
          ),
          const SizedBox(width: 20),
          Text(title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}