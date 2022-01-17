import 'package:aytam/constants.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الدفع'),
        centerTitle: true,
        backgroundColor: bColor,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50.0),
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Text('ارقام الحوالة لكفالة الايتام', style: TextStyle(fontSize: 26),),
              SizedBox(height: 50.0),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('زين كاش'),
                  subtitle: Text('07800000000'),
                  leading: Icon(Icons.attach_money),
                ),
              ),

              Divider(),

              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('آسيا حوالة'),
                  subtitle: Text('07700000000'),
                  leading: Icon(Icons.attach_money),
                ),
              ),

              Divider(),

              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: Text('ارقام اخرى'),
                  subtitle: Text('07800000000'),
                  leading: Icon(Icons.attach_money),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
