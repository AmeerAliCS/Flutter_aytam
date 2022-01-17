import 'package:aytam/constants.dart';
import 'package:flutter/material.dart';

class AboutOrg extends StatelessWidget {
  const AboutOrg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                    color: bColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(child: Image.asset('assets/images/org.png', fit: BoxFit.fill,)),
                ),
              ],
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.grey.withOpacity(0.1),
              ),
              margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Directionality(textDirection: TextDirection.rtl,child: Text('وهي مبادرة إنسانية غير ربحية تهدف الى خدمة المجتمع عن طريق البرمجة، تعتبر هذه المبادرة  مبادرة تعليمية حقيقية ترعى المهتمين بتعلم تصميم وبرمجة تطبيقات الهاتف الجوال ومواقع الانترنت وبرامج الحاسوب والشبكات والاتصالات ونظم تشغيل الحاسوب باستخدام التقنيات مفتوحة المصدر  كما توفر لهم جميع الدروس التعليمية الازمة وبشكل مجاني تماما بل الاهم من ذلك تعتمد على مبدا المواطنة والمشاركة الفاعلة في تأسيس وبناء المجتمع تدعو هذه المبادرة جميع الطلبة والخريجين والهواة والاساتذة الجامعيين والمهتمين مجال البرمجة وتقنيات المعلومات وكذلك الاختصاصات الأخرى السب التطوع  والمشاركة الفعلية لأجل الاتقاء بواقع البلد, حيث تعتبر فرضة عظيمة اكتساب الخبرة والمهارة عن طريق تصميم وتنفيذ برامج وتطبيقات خدمية من شأنها خدمة المواطن وذلك ضمن  مجاميع عمل نشطة وفعالة يتعاون فيها جميع الافراد كفريق واحد تبادل الآراء والخبرات ويطرح  الافكار ليتم مناقشتها وتطبيقها على  أرض الواقع, كما تفتح المجال لجميع المواطنين العراقيين ومن جميع الاختصاصات الى المشاركة الفاعلة في هذه المشاريع لرفد الفريق بالخبرات والأفكار والآراء والمقترحات التي من شأنها خدمة المجتمع بأفضل ما يمكن. ',textAlign: TextAlign.justify, style: TextStyle(fontSize: 16),)),
              )
            ),
          ],
        ),
      ),
    );
  }
}
