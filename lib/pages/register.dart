import 'package:aytam/components/rounded_button.dart';
import 'package:aytam/constants.dart';
import 'package:aytam/pages/home.dart';
import 'package:aytam/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late String _email;
  late String _password;
  late String _name;
  late String _location;
  late String _phoneNumber;
  late String _cashNumber;
  bool showSpinner = false;
  final DateTime timestamp = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        color: bColor,
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  buildLoginHeader(),
                  const SizedBox(height: 40.0),
                  buildNameTextField(),
                  const SizedBox(height: 20.0),
                  buildEmailTextField(),
                  const SizedBox(height: 20.0),
                  buildPasswordTextField(),
                  const SizedBox(height: 20.0),
                  buildLocationTextField(),
                  const SizedBox(height: 20.0),
                  buildPhoneTextField(),
                  const SizedBox(height: 20.0),
                  buildCashTextField(),
                  const SizedBox(height: 40.0),
                  buildLoginButton(),
                  buildLoginText()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLoginHeader(){
    return const Text('الاشتراك', style: TextStyle(fontSize: 30));
  }

  Widget buildNameTextField(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          onSaved: (value) => _name = value!.trim(),
          validator: (value) => value!.isEmpty ? 'يجب ادخال الإسم' : null,
          textAlign: TextAlign.right,
          obscureText: true,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
              hintText: 'الإسم الكامل',
              prefixIcon: Icon(Icons.person)
          ),
          style: const TextStyle(
              height: 1.0,
              color: bColor
          ),
        ),
      ),
    );
  }

  Widget buildEmailTextField(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          onSaved: (value) => _email = value!.trim(),
          validator: (value) => value!.isEmpty ? 'يجب ادخال الإيميل' : null,
          textAlign: TextAlign.right,
          obscureText: true,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              hintText: 'الايميل',
              prefixIcon: Icon(Icons.email)
          ),
          style: const TextStyle(
              height: 1.0,
              color: bColor
          ),
        ),
      ),
    );
  }

  Widget buildPasswordTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          onSaved: (value) => _password = value!.trim(),
          validator: (value) => value!.isEmpty ? 'يجب ادخال باسوورد' : null,
          textAlign: TextAlign.right,
          obscureText: true,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
              hintText: 'الباسوورد',
              prefixIcon: Icon(Icons.lock)
          ),
          style: const TextStyle(
              height: 1.0,
              color: bColor
          ),
        ),
      ),
    );
  }

  Widget buildLocationTextField(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          onSaved: (value) => _location = value!.trim(),
          validator: (value) => value!.isEmpty ? 'يجب ادخال الموقع' : null,
          textAlign: TextAlign.right,
          obscureText: true,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
              hintText: 'الموقع',
              prefixIcon: Icon(Icons.location_on)
          ),
          style: const TextStyle(
              height: 1.0,
              color: bColor
          ),
        ),
      ),
    );
  }

  Widget buildPhoneTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          onSaved: (value) => _phoneNumber = value!.trim(),
          validator: (value) => value!.isEmpty ? 'يجب ادخال رقم' : null,
          textAlign: TextAlign.right,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              hintText: 'رقم الموبايل',
              prefixIcon: Icon(Icons.phone)
          ),
          style: const TextStyle(
              height: 1.0,
              color: bColor
          ),
        ),
      ),
    );
  }

  Widget buildCashTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          onSaved: (value) => _cashNumber = value!.trim(),
          validator: (value) => value!.isEmpty ? 'يجب ادخال رقم' : null,
          textAlign: TextAlign.right,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              hintText: 'رقم التبرع',
              prefixIcon: Icon(Icons.attach_money)
          ),
          style: const TextStyle(
              height: 1.0,
              color: bColor
          ),
        ),
      ),
    );
  }

  Widget buildLoginButton(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: RoundedButton(
        title: 'الاستمرار',
        colour: oColor,
        size: 0,
        onPressed: (){
          //register
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
        },
      ),
    );
  }
  
  Widget buildLoginText(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (contexr) => const Login()));
          },
            child: const Text(
          'تسجيل الدخول',
          style: TextStyle(color: Colors.lightBlue),
        )),
        const Text('  لديك حساب بالفعل ؟'),
      ],
    );
  }


}
