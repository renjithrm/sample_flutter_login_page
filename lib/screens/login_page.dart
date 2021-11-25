import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:login_page/screens/first_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userNameController = TextEditingController();
  final _passwordControler = TextEditingController();
  bool isPasswordVisible = true;
  final _fromKey = GlobalKey<FormState>();

  @override
  void initState() {
    _userNameController.addListener(() => setState(() {}));
    // TODO: implement initState
    super.initState();
  }

//navegate to mainhomeScrern
  void nav() => Navigator.of(context)
      .push(MaterialPageRoute(builder: (ctx) => MainFirstPage()));
//-------------------------------------------------------------------
// to saved password

  Future validate() async {
    if (_fromKey.currentState!.validate()) {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      await sharedPreferences.setString('Password', _passwordControler.text);
      nav();
    } else {
      print(false);
    }
  }
//----------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _fromKey,
          child: ListView(
            children: [
              Container(
                  height: 250,
                  child: const Center(
                      child: Text(
                    "Add your ideas..",
                    style: TextStyle(fontSize: 40),
                  ))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getEmailText(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: getPassword(),
              ),
              SizedBox(
                height: 50,
              ),
              loginPageButton()
            ],
          ),
        ),
      ),
    );
  }
//------------------------------------------------------------------
//user name textfield

  Widget getEmailText() => TextFormField(
        controller: _userNameController,
        decoration: InputDecoration(
            hintText: 'abc@gmil.com',
            labelText: 'Email',
            border: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.red,
            )),
            prefixIcon: const Icon(Icons.email),
            suffixIcon: _userNameController.text.isEmpty
                ? Container(
                    width: 0,
                  )
                : IconButton(
                    onPressed: () => _userNameController.clear(),
                    icon: const Icon(Icons.close))),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.done,
        validator: MultiValidator([
          RequiredValidator(errorText: 'Requried**'),
          EmailValidator(errorText: 'Invalid Email')
        ]),
      );
//------------------------------------------------------------------------
//password textfield
  Widget getPassword() => TextFormField(
        controller: _passwordControler,
        decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your password..',
            prefixIcon: Icon(Icons.lock),
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
              onPressed: () =>
                  setState(() => isPasswordVisible = !isPasswordVisible),
              icon: isPasswordVisible
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
            )),
        obscureText: isPasswordVisible,
        validator: MultiValidator([
          RequiredValidator(errorText: 'Requried**'),
          MinLengthValidator(6,
              errorText: "password must be at least 6 digits long"),
        ]),
      );
//-----------------------------------------------------------------------
//login page button

  Widget loginPageButton() => Container(
        decoration: BoxDecoration(),
        child: Center(
          child: Container(
            width: 250,
            height: 50,
            child: ElevatedButton(
              onPressed: validate,
              child: Text(
                'Log in',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      );
}
