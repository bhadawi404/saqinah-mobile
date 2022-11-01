import 'package:flutter/material.dart';

class categoryPembelajaran extends StatelessWidget {
  final String iconImagePath;
  final String categoryName;
  final VoidCallback? onTap;

  const categoryPembelajaran({
    Key? key,
    required this.iconImagePath,
    required this.categoryName,
    this.onTap
  }):super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(bottom: 8, right: 17),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Center(
              child: Image.asset(iconImagePath, width: 26,),
            ),
          ),
        ),
        Text(categoryName, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.black),),
      ],
    );
  }
}
