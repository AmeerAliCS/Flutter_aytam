import 'package:aytam/constants.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('عن التطبيق'),
        centerTitle: true,
        backgroundColor: bColor,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [

              Directionality(textDirection: TextDirection.rtl,child: Text('فريق العمل', style: TextStyle(fontSize: 30),)),
              SizedBox(height: 50.0),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  leading: Text('برمجة:', style: TextStyle(fontSize: 20),),
                  title: Text('امير علي', style: TextStyle(fontSize: 20),),
                ),
              ),

              Divider(),

              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  leading: Text('تصميم:', style: TextStyle(fontSize: 20),),
                  title: Text('كفاح', style: TextStyle(fontSize: 20),),
                ),
              ),

              Divider(),

              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  leading: Text('فكرة:', style: TextStyle(fontSize: 20),),
                  title: Text('ميثم البصراوي', style: TextStyle(fontSize: 20),),
                ),
              ),

              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
