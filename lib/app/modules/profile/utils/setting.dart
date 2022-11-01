import 'package:flutter/material.dart';

class setting extends StatelessWidget {
  final String iconSrc, title;
  final Function? press;

  const setting({
    Key? key,
    required this.iconSrc,
    required this.title,
    this.press,
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: (){},
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Row(
        children: [
          Image.asset(iconSrc, height: 32, width: 32,),
          SizedBox(width:10),
          Text(title, style: TextStyle(fontSize: 14),),
          Spacer(),
          Icon(Icons.arrow_forward_ios, size: 16,color: Colors.black,)
        ],
      ),
    ),
  );
  }
}