

import 'package:flutter/material.dart';
import 'package:saqinah/app/modules/profile/utils/setting.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
        children: [
          buildProfile(),
          buildMenuSetting(),
        ],
      ),
      ],
    );
  }
}

Widget buildProfile() {
  return  Column(
    children: [
      SizedBox(
        height: 240,
        child: Container(
          child: Stack(children: [
            ClipPath(
              clipper: CustomShape(),
              child: Container(
                height: 400,
                color: Color(0xFFE0A2A3),
            
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 8,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: 
                        AssetImage('assets/icon/user.png')
                      )
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("Saqinah", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 1),
                  Text("admin@saqinah.id", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                ],
              ),
            )
          ],)),
      ),

    ],
  );
}

Widget buildMenuSetting(){
  return Column(
    children: [
      setting(iconSrc: 'assets/icon/user-profile.png', title: 'Edit Profile'),
      setting(iconSrc: 'assets/icon/reward.png', title: 'Reward'),
      setting(iconSrc: 'assets/icon/support.png', title: 'Bantuan'),
      setting(iconSrc: 'assets/icon/privacy.png', title: 'Kebijakan Privasi'),
      setting(iconSrc: 'assets/icon/term.png', title: 'Ketentuan Layanan'),
      setting(iconSrc: 'assets/icon/logout.png', title: 'Logout'),
      setting(iconSrc: 'assets/icon/rating.png', title: 'Beri Rating'),
      
    ],
    
  );
}
class CustomShape extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height -100);
    path.quadraticBezierTo(width/2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return true;
  }
}
