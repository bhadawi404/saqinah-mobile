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
    return Column(
      children: [
        buildProfile()
      ],
    );
  }
}

Widget buildProfile() {
  return Container(
    child: Column(
      children: [
        setting(),
      ],
    ),
  );
}
