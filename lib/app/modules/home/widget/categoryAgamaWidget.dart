import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saqinah/app/modules/home/utils/categoryPembelajaranAgama.dart';
import 'package:saqinah/app/theme.dart';

class categoryAgamaWidget extends StatelessWidget {
  
  const categoryAgamaWidget({
    Key? key,
    
  
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    double? scrolledUnderElevation;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: scrolledUnderElevation,
        title: Text("Pembelajaran Agama", textAlign: TextAlign.center,),
        backgroundColor: PrimaryColor,
      ),
      body: Column(
        children: [
          buildCatgoryAgama(),
        ],
      ),
    );
  }
}

Widget buildCatgoryAgama() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      margin: EdgeInsets.only(top: 30, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Agama Islam",
            style: GoogleFonts.roboto(fontStyle: FontStyle.normal, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 14),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                categoryPembelajaranAgama(
                    imageUrl: "assets/images/banner-religi.jpg",
                    title: 'Pentingnya ilmu agama'),
                categoryPembelajaranAgama(
                    imageUrl: "assets/images/banner-law.jpg",
                    title: 'Pentingnya ilmu hukum'),
                categoryPembelajaranAgama(
                    imageUrl: "assets/images/banner-financial.jpg",
                    title: 'Pentingnya ilmu finansial'),
                categoryPembelajaranAgama(
                    imageUrl: "assets/images/banner-economy.jpg",
                    title: 'Pentingnya ilmu ekonomi'),
              ],
            ),
          )
        ],
      ),
    ),
  );
}