import 'package:aytam/constants.dart';
import 'package:aytam/pages/about.dart';
import 'package:aytam/pages/about_org.dart';
import 'package:aytam/pages/payment.dart';
import 'package:aytam/pages/profile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        title: const Center(child: Text('الرئيسية', style: TextStyle(fontSize: 26),)),
        backgroundColor: bColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey.withOpacity(0.2),
              ),
              margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Column(
                children: [
                  const Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      trailing: Text('1h ago'),
                      leading: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Icon(Icons.account_circle, color: bColor, size: 34)
                      ),
                      title: Text('ميثم البصراوي'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s'),
                  ),
                  Container(child: Image.asset('assets/images/child.png'),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: bColor,
                    ),
                  ),
                  const SizedBox(height: 15.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          child: const Text('مشاركة', style: TextStyle(color: bColor, fontSize: 16, fontWeight: FontWeight.bold),),
                          onTap: (){
                             // share content
                          },
                      ),

                      Row(
                        children: [
                          IconButton(
                              onPressed: (){
                                // goto comment
                              },
                              icon: const Icon(Icons.favorite, color: bColor,)
                          ),
                          const Text('609'),
                        ],
                      ),

                      Row(
                        children: [
                          IconButton(
                              onPressed: (){
                                // goto comment
                              },
                              icon: const Icon(Icons.comment, color: bColor,)
                          ),
                          const Text('120'),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 25.0,),


                ],
              ),
            ),

            const SizedBox(height: 35.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(width: 20.0,),
                Expanded(
                  child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
                        child: Column(
                          children: [
                            Container(child: Image.asset('assets/images/child.png'), decoration: BoxDecoration(
                              color: bColor,
                              borderRadius: BorderRadius.circular(15.0)
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                            ),
                            const Text('ميثم البصراوي', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: gColor),),
                            const Text('Robbie Williams', style: TextStyle(fontSize: 16, color: gColor),)
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.withOpacity(0.1),
                        ),
                      ),


                ),

                const SizedBox(width: 20.0,),

                Expanded(
                  child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
                        child: Column(
                          children: [
                            Container(child: Image.asset('assets/images/child.png'), decoration: BoxDecoration(
                                color: bColor,
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                            ),
                            const Text('ميثم البصراوي', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: gColor),),
                            const Text('Robbie Williams', style: TextStyle(fontSize: 16, color: gColor),)
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.withOpacity(0.1),
                        ),
                      ),


                ),
                const SizedBox(width: 20.0,),

              ],
            ),

            const SizedBox(height: 20.0,),

            Row(
              children: [
                const SizedBox(width: 20.0,),
                Expanded(
                  child: Column(
                    children: [
                      IconButton(
                        icon: const CircleAvatar(
                            child: Icon(Icons.add, color: wColor, size: 30.0,),
                            radius: 70.0,
                            backgroundColor: bColor,
                        ),
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 20.0,),
                Expanded(
                  child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
                        child: Column(
                          children: [
                            Container(child: Image.asset('assets/images/child.png'), decoration: BoxDecoration(
                                color: bColor,
                                borderRadius: BorderRadius.circular(15.0)
                            ),
                              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                            ),
                            const Text('ميثم البصراوي', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: gColor),),
                            const Text('Robbie Williams', style: TextStyle(fontSize: 16, color: gColor),)
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey.withOpacity(0.1),
                        ),
                      ),

                ),

                const SizedBox(width: 20.0),
              ],
            ),
            const SizedBox(height: 40.0,),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey.withOpacity(0.1),
              ),
              margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Column(
                children: const [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ListTile(
                      trailing: Text('1h ago'),
                      leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(Icons.account_circle, color: oColor, size: 34)
                      ),
                      title: Text('ميثم البصراوي'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s'),
                  ),
                  SizedBox(height: 15.0,),

                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          alignment: Alignment.center,
          color: bColor,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(onTap: () {
                  Navigator.of(context).pop();
                },child: const Center(child: Text('الايتام', style: TextStyle(fontSize: 22, color: wColor),))),
                const SizedBox(height: 12.0),
                GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Payment()));
                },child: const Center(child: Text('التبرع', style: TextStyle(fontSize: 22, color: wColor),))),
                const SizedBox(height: 12.0),
                GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutOrg()));
                },child: const Center(child: Text('عن المبادرة', style: TextStyle(fontSize: 22, color: wColor),))),
                const SizedBox(height: 12.0),
                GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const About()));
                },child: const Center(child: Text('عن التطبيق', style: TextStyle(fontSize: 22, color: wColor),))),
                const SizedBox(height: 12.0),
                GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
                },child: const Center(child: Text('تواصل مع ميثم البصراوي', style: TextStyle(fontSize: 22, color: wColor),))),
                const SizedBox(height: 150.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
