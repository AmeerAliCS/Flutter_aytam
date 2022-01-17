import 'package:aytam/components/rounded_container.dart';
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
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                buildProfileHeader(),
                buildCircleImgProfile(),
              ],
            ),
            const SizedBox(height: 10.0,),
            const Text('ميثم البصراوي', style: TextStyle(fontSize: 24),),
            const Text('المحافظة / المنطقة ', style: TextStyle(fontSize: 16),),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedContainer(
                  title: 'رقم الهاتف',
                  imageUrl: 'assets/images/phone_icon.png',
                  onPressed: cardClick,
                  padding: 2.0,
                  subtitle: '07800000000',
                ),

                RoundedContainer(
                  title: 'الايميل',
                  imageUrl: 'assets/images/email_icon.png',
                  onPressed: cardClick,
                  padding: 2.0,
                  subtitle: 'john@codeforiraq.org',
                ),
              ],
            ),

            const SizedBox(height: 20.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedContainer(
                  title: 'الموقع',
                  imageUrl: 'assets/images/location_icon.png',
                  onPressed: cardClick,
                  padding: 2.0,
                  subtitle: 'CA 95673',
                ),

                RoundedContainer(
                  title: 'رقم زين كاش',
                  imageUrl: 'assets/images/zain_cash_icon.png',
                  onPressed: cardClick,
                  padding: 2.0,
                  subtitle: '07800000000',
                ),
              ],
            ),
            const SizedBox(height: 20.0,),
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

  Widget buildCircleImgProfile(){
    return const CircleAvatar(
      radius: 64,
      backgroundColor: Colors.transparent,
      backgroundImage: AssetImage('assets/images/circle.png'),
    );
  }

  cardClick(){

  }
}
