import 'package:flutter/material.dart';

class populerPembelajran extends StatelessWidget {
  final String imageUrl;
  final String title; 

  const populerPembelajran({
    Key? key,
    required this.imageUrl,
    required this.title,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8, right: 17),
      width: 155,
      height: 176,
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(imageUrl, width: 155, height: 110, fit: BoxFit.cover,)),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(title, overflow: TextOverflow.ellipsis, maxLines: 2,),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Icon(Icons.star, color: Colors.yellow,),
                Text("(20)")
              ],
            ),
          ),
        ],
      ),
    );
  }
}