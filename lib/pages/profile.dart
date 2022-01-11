import 'package:aytam/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildProfileHeader(),
          ],
        ),
      ),
    );
  }

  Widget buildProfileHeader(){
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(20.0),
        bottomLeft: Radius.circular(20.0),
      ),
      child: Image.asset('assets/images/profile_img.png', width: double.infinity,),
    );
  }
}
