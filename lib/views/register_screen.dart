import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bt_login_user/image_url.dart';
import 'package:bt_login_user/views/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  ImageUrl imageUrl = ImageUrl();
  TextEditingController? mathController;
  TextEditingController? litController;
  TextEditingController? englishController;
  TextEditingController? _userPasswordController;
  TextEditingController? _userPasswordController2;
  var _passwordVisible;
  var _passwordVisible2;

  @override
  void initState() {
    super.initState();
    mathController = TextEditingController();
    litController = TextEditingController();
    englishController = TextEditingController();
    _passwordVisible = false;
    _passwordVisible2 = false;
  }

  @override
  void dispose() {
    super.dispose();
    mathController!.dispose();
    litController!.dispose();
    englishController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 108,
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 33, right: 250, bottom: 16),
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        color: Color(0xff29b412),
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(left: 35, right: 93, bottom: 10),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "Creat an ",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: "account",
                        style: TextStyle(
                            color: Color(0xff29b412),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: " to access all the features of",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: " MyApp!",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                ),
                textInputWidget(
                    labelText: "Ex: abc@example.com",
                    controller: mathController,
                    image: imageUrl.a,
                    text: "Email"),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    (TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _userPasswordController,
                      obscureText:
                          !_passwordVisible, //This will obscure text dynamically
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.redAccent, width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color(0xff29b412), width: 1.5),
                        ),
                        labelText: "*******",
                        labelStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: Color(0xffC8C8C8)),
                        prefixIcon: Image.asset(imageUrl.lock),
                        prefixIconColor: const Color(0xff29b412),
                        suffixIconColor: const Color(0xff29b412),
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xff29b412),
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                    )),
                  ]),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10, top: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Confirm Password",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    (TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _userPasswordController2,
                      obscureText:
                          !_passwordVisible, //This will obscure text dynamically
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Colors.redAccent, width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color(0xff29b412), width: 1.5),
                        ),
                        labelText: "*******",
                        labelStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            color: Color(0xffC8C8C8)),
                        prefixIcon: Image.asset(imageUrl.lock),
                        prefixIconColor: const Color(0xff29b412),
                        suffixIconColor: const Color(0xff29b412),
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible2
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xff29b412),
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible2 = !_passwordVisible2;
                            });
                          },
                        ),
                      ),
                    )),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 36),
                          child: confirmationButton(
                              onPressed: () {
                                setState(() {});
                              },
                              labelButton: "Register"),
                        ),
                      ),
                      //  SizedBox(width: 15,),
                    ],
                  ),
                ),

                /*informationWidget(mathContent: math,
                    litContent: lit,
                    englishContent: english),*/
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          color: Color(0xff000000)),
                    ),
                    TextButton(
                      onPressed: () {
                        var route = MaterialPageRoute(
                            builder: (context) => const LoginScreen());
                        Navigator.push(context, route);
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff29b412)),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }

  Widget textInputWidget(
      {required String labelText,
      required controller,
      required String image,
      required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                text,
                style: const TextStyle(
                    color: Color(0xff000000),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Colors.redAccent, width: 1.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color(0xff29b412), width: 1.5),
              ),
              labelText: labelText,
              labelStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Color(0xffC8C8C8)),
              prefixIcon: Image.asset(image),
              prefixIconColor: const Color(0xff29b412),
            ),
            controller: controller,
          ),
        ],
      ),
    );
  }

  Widget textInputWidgetTwo(
      {required String labelText,
      required controller,
      required String image,
      required String text,
      required String image2,
      required bool passwordVisible}) {
    return Container(
      padding: const EdgeInsets.only(left: 35, bottom: 20, right: 10, top: 15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                text,
                style: const TextStyle(
                    color: Color(0xff000000),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          TextField(
            keyboardType: TextInputType.text,
            obscureText: !passwordVisible,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Colors.redAccent, width: 1.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color(0xff29b412), width: 1.5),
              ),
              labelText: labelText,
              labelStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  color: Color(0xffC8C8C8)),
              prefixIcon: Image.asset(image),
              prefixIconColor: const Color(0xff29b412),
              suffixIcon: IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
            ),
            controller: controller,
          ),
        ],
      ),
    );
  }

  Widget confirmationButton({required onPressed, required String labelButton}) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(labelButton),
      style: ElevatedButton.styleFrom(
        primary: const Color(0xff29b412), // Background color
        onPrimary: const Color(0xffffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ), // Text Color (Foreground color)
      ),
    );
  }

  /*Widget informationWidget(
      {required String mathContent, required String litContent, required String englishContent}) {
    return Container(
      padding: const EdgeInsets.only(left: 30, bottom: 20, right: 10, top: 15),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text("Thong tin")
              , textWidget(labelText: "Diem toan ", content: mathContent)
              , SizedBox(height: 18,)
              , textWidget(labelText: "Diem van", content: litContent)
              , SizedBox(height: 18,)
              , textWidget(labelText: "Diem anh", content: englishContent)
              , SizedBox(height: 18,)

            ],
          ),
        ),
      ),
    );
  }
*/
  textWidget({required String labelText, required String content}) {
    return Row(
      children: [
        Text(
          labelText,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(content),
      ],
    );
  }
}
