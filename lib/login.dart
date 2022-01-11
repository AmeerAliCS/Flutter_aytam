import 'package:aytam/components/rounded_button.dart';
import 'package:aytam/constants.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late String _email;
  late String _password;
  bool showSpinner = false;
  final DateTime timestamp = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        color: bColor,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                buildLoginHeader(),
                const SizedBox(height: 150.0),
                buildPhoneTextField(),
                const SizedBox(height: 40.0),
                buildPasswordTextField(),
                const SizedBox(height: 100.0),
                buildLoginButton(),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLoginHeader(){
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(20.0),
        bottomLeft: Radius.circular(20.0),
      ),
      child: Container(
        height: 120.0,
        width: double.infinity,
        color: bColor,
        child: const Center(child: Text('تسجيل الدخول', style: TextStyle(color: Colors.white, fontSize: 22),)),
      ),
    );
  }

  Widget buildPhoneTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          onSaved: (value) => _email = value!.trim(),
          validator: (value) => value!.isEmpty ? 'يجب ادخال الايميل' : null,
          textAlign: TextAlign.right,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
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

  Widget buildLoginButton(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: RoundedButton(
          title: 'الاستمرار',
        colour: oColor,
        size: 0,
        onPressed: (){
            //login
        },
      ),
    );
  }
}
