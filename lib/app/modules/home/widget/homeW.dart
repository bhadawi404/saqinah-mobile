import 'package:flutter/material.dart';
import 'package:saqinah/app/modules/home/utils/categoyPembelajaran.dart';
import 'package:saqinah/app/modules/home/utils/populerPembelajaran.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:saqinah/app/modules/home/widget/categoryAgamaWidget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
        children: [
          buildProfile(),
          buildCard(),
          buildCategoryPembelajaran(),
          buildPopulerPembelajaran()
        ],
      ),
      ], 
    );
  }
}

Widget buildProfile() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Haii", style: TextStyle(fontSize: 16)),
              SizedBox(height: 2),
              Text("Saqinah",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image:
                    DecorationImage(image: AssetImage('assets/icon/user.png'))),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 16,
                height: 16,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildCard() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      width: double.infinity,
      height: 220,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage('assets/icon/img_card.png')),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aplikasi Edukasi & Konsultasi Pernikahan",
            style: GoogleFonts.roboto(fontStyle: FontStyle.normal, fontSize: 16, fontWeight: FontWeight.bold),
          ),SizedBox(height: 28),
          Text(
            "Dengan dukungan lebih dari 5 tenaga ahli, seperti Psikologi, ahli agama, ahli hukum, ahli gizi, dan dokter yang akan menjadi sahabat dalam mencari solusi permasalahan rumah tangga.",
            style: TextStyle(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.normal),
          ),
          SizedBox(height: 10),
        ],
      ),
    ),
  );
}

Widget buildCategoryPembelajaran() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kategori Pembelajaran",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 14),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                categoryPembelajaran(
                  iconImagePath: "assets/icon/book.png",
                  categoryName: 'Agama',
                  onTap: () {
                    print(Get.to(categoryAgamaWidget()));
                  },
                ),
                categoryPembelajaran(
                  iconImagePath: "assets/icon/law.png",
                  categoryName: 'Hukum',
                  onTap: () {},
                ),
                categoryPembelajaran(
                  iconImagePath: "assets/icon/psychologist.png",
                  categoryName: 'Psikologi',
                  onTap: () {},
                ),
                categoryPembelajaran(
                  iconImagePath: "assets/icon/doctor.png",
                  categoryName: 'Kedokteran',
                  onTap: () {},
                ),
                categoryPembelajaran(
                  iconImagePath: "assets/icon/financial-profit.png",
                  categoryName: 'Finansial',
                  onTap: () {},
                ),
                categoryPembelajaran(
                  iconImagePath: "assets/icon/suitcase.png",
                  categoryName: 'Ekonomi',
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildPopulerPembelajaran() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      margin: EdgeInsets.only(top: 30, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Populer Pembelajaran",
            style: GoogleFonts.roboto(fontStyle: FontStyle.normal, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 14),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                populerPembelajran(
                    imageUrl: "assets/images/banner-religi.jpg",
                    title: 'Pentingnya ilmu agama'),
                populerPembelajran(
                    imageUrl: "assets/images/banner-law.jpg",
                    title: 'Pentingnya ilmu hukum'),
                populerPembelajran(
                    imageUrl: "assets/images/banner-financial.jpg",
                    title: 'Pentingnya ilmu finansial'),
                populerPembelajran(
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

