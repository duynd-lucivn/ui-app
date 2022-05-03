
import 'package:flutter/material.dart';
import 'package:bt_login_user/image_url.dart';
import 'package:bt_login_user/views/register_screen.dart';
import 'package:bt_login_user/views/user_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ImageUrl imageUrl= ImageUrl();
  TextEditingController? mathController;
  TextEditingController? litController;
  TextEditingController? englishController;
  String math = "Chua xac dinh";
  String lit = "Chua xac dinh";
  String english = "Chua xac dinh";
  late double average;

  String loai = "Chua xac dinh";

  @override
  void initState() {
    super.initState();
    mathController = TextEditingController();
    litController = TextEditingController();
    englishController = TextEditingController();
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
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 108,),
                 Container(
                   padding: const EdgeInsets.only(left: 33,  right: 293,bottom: 16),
                child: const Text("Login",
                  style: TextStyle(color: Color(0xff29b412),
                      fontSize: 32,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),),
                Container(
                  padding: const EdgeInsets.only(left: 35,  right: 93,bottom: 40),
                  child: const Text("Login now to show all users in the mock system at a place!",
                    style: TextStyle(color: Color(0xff000000),
                        fontSize: 16,fontWeight: FontWeight.w400),textAlign: TextAlign.left,),),
                textInputWidget(labelText: "Ex: abc@example.com",

                    controller: mathController,image: imageUrl.a,text: "Email"),
                textInputWidget(labelText: "•••••••",

                    controller: englishController,image: imageUrl.lock,text:"Your Password" ),
                const SizedBox(height: 40,),
                 SizedBox(
                   height: 60,
                   child: Row(
                     children: [
                       Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 36),
                            child: confirmationButton(onPressed: () {
                              setState(() {
                                var route2 = MaterialPageRoute(builder: (context)=> const UserScreen());
                                Navigator.push(context,route2);
                              });
                            },
                                labelButton: "Login"),
                          ),
                        ),
                     ],
                   ),
                 ),


                Row(
                 // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don’t have an account?",style:TextStyle(fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,color: Color(0xff000000)), ),
                    TextButton(onPressed: () {
                         var route = MaterialPageRoute(builder: (context)=> const RegisterScreen());
                         Navigator.push(context,route);
                    }, child: const Text("Register",style:TextStyle(fontWeight: FontWeight.bold
                        ,color: Color(0xff29b412)), ),),
                  ],
                ),
              ],
            )),
      ),
    );
  }

  Widget textInputWidget(
      {required String labelText, required controller,required String image,required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,bottom:10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(text, style: const TextStyle(color: Color(0xff000000),
                  fontSize: 16,fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
            ),
          ),
          SizedBox(
            height: 56,
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.redAccent, width: 1.5),
                  ),
                enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Color(0xff29b412), width: 1.5),
                ),
                  labelText: labelText,labelStyle: const TextStyle(fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,color: Color(0xffC8C8C8)),
                prefixIcon: Image.asset(image),prefixIconColor:  const Color(0xff29b412),



              ),
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }

  Widget confirmationButton({required onPressed, required String labelButton}) {
    return ElevatedButton(onPressed: onPressed, child: Text(labelButton),
     style: ElevatedButton.styleFrom(
      primary: const Color(0xff29b412), // Background color
      onPrimary: const Color(0xffffffff),
      shape:  RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(15.0),) , // Text Color (Foreground color)
    ),);
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
        Text(labelText, style: const TextStyle(fontWeight: FontWeight.bold),)
        , const SizedBox(width: 10,),
        Text(content),
      ],
    );
  }

}
